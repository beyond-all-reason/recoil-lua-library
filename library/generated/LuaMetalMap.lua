---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 1.1.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaMetalMap.cpp
---
---@meta

---Metal Map Lua API
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/4b2a52982cde9399acc10c6c6b6625479779b4e4/rts/Lua/LuaMetalMap.cpp#L13-L16" target="_blank">source</a>]
---
---@see rts/Lua/LuaMetalMap.cpp

---[<a href="https://github.com/beyond-all-reason/spring/blob/4b2a52982cde9399acc10c6c6b6625479779b4e4/rts/Lua/LuaMetalMap.cpp#L52-L58" target="_blank">source</a>]
---
---@param x integer in worldspace/16.
---@param z integer in worldspace/16.
---@param metalAmount number must be between 0 and 255*maxMetal (with maxMetal from the .smd or mapinfo.lua).
---@return nil
function Spring.SetMetalAmount(x, z, metalAmount) end