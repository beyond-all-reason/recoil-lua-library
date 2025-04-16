---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.2.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaSyncedTable.cpp
---
---@meta

---Proxy table for reading synced global state in unsynced code.
---
---**Generally not recommended.** Instead, listen to the same events as synced
---and build the table in parallel
---
---Unsynced code can read from the synced global table (`_G`) using the `SYNCED`
---proxy table. e.g. `_G.foo` can be access from unsynced via `SYNCED.foo`.
---
---This table makes *a copy* of the object on the other side, and only copies
---numbers, strings, bools and tables (recursively but with the type
---restriction), in particular this does not allow access to functions.
---
---Note that this makes a copy on each access, so is very slow and will not
---reflect changes. Cache it, but remember to refresh.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/a84018ffa94c74d1f93b47f5d9a47991a68d3b5b/rts/Lua/LuaSyncedTable.cpp#L73-L91" target="_blank">source</a>]
---@type table<string, any>
SYNCED = nil