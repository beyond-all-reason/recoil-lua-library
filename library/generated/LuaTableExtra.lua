---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.0.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaTableExtra.cpp
---
---@meta

---Table extensions
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/c3d683dd93c43b6df48a65c2ddbbec8d8e822456/rts/Lua/LuaTableExtra.cpp#L6-L8" target="_blank">source</a>]

---Returns a table with preallocated memory
---
---Returns an empty table with more memory allocated.
---This lets you microoptimize cases where a table receives
---a lot of elements and you know the number beforehand,
---such as one for each UnitDef, by avoiding reallocation.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/c3d683dd93c43b6df48a65c2ddbbec8d8e822456/rts/Lua/LuaTableExtra.cpp#L10-L21" target="_blank">source</a>]
---
---@param nArray number hint for count of array elements
---@param nHashed number hint for count of hashtable elements
---@return table
function table.new(nArray, nHashed) end