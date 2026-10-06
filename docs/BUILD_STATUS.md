# Build status

## Implemented (source only)

- Pure Lua duel state machine: round transitions, HP damage, ring-outs, best-of-five scoring, duplicate elimination prevention, match reset.
- Deterministic Lua test script in `tests/duel_spec.lua`.

## Not yet implemented or verified

- Runtime game hooks, survivor controls, attacks, knockback physics, custom arena, HUD, or multiplayer synchronization.
- Lua test execution in the user's game environment.
- Melty catalog compatibility, package recipe, one-click validation, and gameplay screenshot.

## Next integration task

Map verified ReturnOfModding game callbacks to the pure Lua rules engine, with host-authoritative state for multiplayer. Do not assume engine hook names or ship an untested gameplay mod.
