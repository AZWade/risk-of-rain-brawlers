-- Pure Lua match rules. No game-specific APIs here.
local Duel = {}
Duel.__index = Duel

function Duel.new(config)
  assert(type(config) == "table", "config required")
  assert(type(config.wins_required) == "number" and config.wins_required >= 1, "invalid wins_required")
  assert(type(config.max_health) == "number" and config.max_health > 0, "invalid max_health")
  local self = setmetatable({
    wins_required = config.wins_required,
    max_health = config.max_health,
    wins = {commando = 0, mercenary = 0},
    health = {},
    phase = "ready",
    winner = nil,
    round_winner = nil,
    round_number = 0
  }, Duel)
  return self
end

function Duel:start_round()
  assert(self.phase == "ready" or self.phase == "round_over", "round cannot start")
  self.round_number = self.round_number + 1
  self.health = {commando = self.max_health, mercenary = self.max_health}
  self.round_winner = nil
  self.phase = "fighting"
end

function Duel:eliminate(loser, reason)
  assert(loser == "commando" or loser == "mercenary", "unknown fighter")
  assert(reason == "health_depleted" or reason == "ring_out", "invalid elimination reason")
  if self.phase ~= "fighting" then return false end
  local victor = loser == "commando" and "mercenary" or "commando"
  self.wins[victor] = self.wins[victor] + 1
  self.round_winner = victor
  self.last_reason = reason
  if self.wins[victor] >= self.wins_required then
    self.winner = victor
    self.phase = "match_over"
  else
    self.phase = "round_over"
  end
  return true
end

function Duel:damage(fighter, amount)
  assert(fighter == "commando" or fighter == "mercenary", "unknown fighter")
  assert(type(amount) == "number" and amount == amount and amount >= 0 and amount < math.huge, "invalid damage")
  if self.phase ~= "fighting" then return false end
  self.health[fighter] = math.max(0, self.health[fighter] - amount)
  if self.health[fighter] == 0 then return self:eliminate(fighter, "health_depleted") end
  return false
end

function Duel:ring_out(fighter)
  return self:eliminate(fighter, "ring_out")
end

function Duel:reset_match()
  self.wins = {commando = 0, mercenary = 0}
  self.health = {}
  self.phase = "ready"
  self.winner = nil
  self.round_winner = nil
  self.last_reason = nil
  self.round_number = 0
end

return Duel
