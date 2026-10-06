# Verified upstream loader references

- Project: https://github.com/return-of-modding/ReturnOfModding
- Modding wiki: https://return-of-modding.github.io/ModdingWiki/
- Package: https://thunderstore.io/c/risk-of-rain-returns/p/ReturnOfModding/ReturnOfModding/

ReturnOfModding targets **Risk of Rain Returns**, not Risk of Rain 2. The documented Lua mod layout uses `main.lua` and a Thunderstore-style `manifest.json` under `ReturnOfModding/plugins/TeamName-ModName/`. Current loader behavior and game compatibility must still be verified on the user's machine.

This branch includes only a print-based Lua smoke test. No game logic, API hooks, DLLs, or external assets are bundled.
