
---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 0.0.1
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: LuaMetalMap.cpp
---
---@meta

---Metal Map Lua API
---
---@see rts/Lua/LuaMetalMap.cpp

---@param x integer in worldspace/16.
---@param z integer in worldspace/16.
---@param metalAmount number must be between 0 and 255*maxMetal (with maxMetal from the .smd or mapinfo.lua).
---@return nil
function Spring.SetMetalAmount(x, z, metalAmount) end