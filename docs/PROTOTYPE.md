# Versus prototype milestone

## Goal

A small, testable arena duel that validates combat feel before expanding to co-op.

## Intended mechanics

- Two controllable combatants in one arena
- Responsive movement and platform traversal
- Light and heavy attacks with readable startup/recovery
- Hitstun, knockback, health/stock rules (exact model TBD)
- Round reset and basic win detection

## Acceptance criteria

1. Two combatants can enter a match and move independently.
2. Attacks produce deterministic hit confirmation and damage.
3. Match ends under explicit win conditions and can restart.
4. Logs expose integration errors without crashing the host.

No gameplay implementation is claimed at this stage. Confirm host game and integration API before coding runtime hooks.
