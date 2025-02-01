# Recoil LuaLS Library

[Lua Language Server](https://github.com/luals/lua-language-server) types for [Recoil Engine](https://github.com/beyond-all-reason/spring).

## Usage

Add this as a submodule of your Recoil project.

```bash
git submodule add https://github.com/beyond-all-reason/recoil-lua-library
```

Then create `.luarc.json` at root with the following options:

```json
{
  "$schema": "https://raw.githubusercontent.com/sumneko/vscode-lua/master/setting/schema.json",
  "runtime.version": "Lua 5.1",
  "completion.requireSeparator": "/",
  "runtime.path": [
    "?",
    "?.lua"
  ],
  "workspace.library": [
    "recoil-lua-library"
  ],
  "runtime.special": {
    "VFS.Include": "require",
    "include": "require",
    "shard_include": "require"
  }
}
```
