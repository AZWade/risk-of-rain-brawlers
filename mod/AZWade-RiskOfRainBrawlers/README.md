# Loader smoke-test plugin

This is a minimal Lua bootstrap, not a playable mod. Copy the `AZWade-RiskOfRainBrawlers` directory into `ReturnOfModding/plugins/` **only after** installing a compatible ReturnOfModding loader for Risk of Rain Returns.

Expected layout:

```
ReturnOfModding/plugins/AZWade-RiskOfRainBrawlers/
  main.lua
  manifest.json
```

Launch the game in a local test environment and inspect the loader log/console for `[RiskOfRainBrawlers] main.lua loaded (bootstrap only)`. No local runtime test has been performed. Do not publish this package.
