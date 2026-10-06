# ReturnOfModding integration checklist

## Status

Integration is **not yet validated** against the target game. No loader API, hook name, game executable, or runtime version should be assumed.

## Verification gates

1. Confirm the exact target title and game build/platform.
2. Verify whether ReturnOfModding supports that game and version, and identify its official installation instructions.
3. Verify loader version, plugin language/runtime, entrypoint conventions, and hook API from primary documentation or examples.
4. Create a minimal load/unload smoke test and record loader logs.
5. Identify permitted input, movement, hitbox, damage, and match-state integration points.
6. Test locally in a disposable environment; do not ship until approved.

## Security and distribution

Never commit game binaries, credentials, local install paths, or third-party proprietary assets. Keep experiments on this development branch. Do not publish releases without owner approval.

## Open questions

- Target game: Risk of Rain Returns, Risk of Rain 2, or another title?
- Intended approach: modification of an existing game versus standalone fan prototype?
- Target operating system and runtime?
