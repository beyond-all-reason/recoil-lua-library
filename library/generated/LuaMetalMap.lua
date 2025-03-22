---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.0.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaMetalMap.cpp
---
---@meta

---Metal Map Lua API
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/b081fd2a1ba0b982f00d09ae752bffb2bb58f7b4/rts/Lua/LuaMetalMap.cpp#L13-L16" target="_blank">source</a>]
---
---@see rts/Lua/LuaMetalMap.cpp

---[<a href="https://github.com/beyond-all-reason/spring/blob/b081fd2a1ba0b982f00d09ae752bffb2bb58f7b4/rts/Lua/LuaMetalMap.cpp#L52-L58" target="_blank">source</a>]
---
---@param x integer in worldspace/16.
---@param z integer in worldspace/16.
---@param metalAmount number must be between 0 and 255*maxMetal (with maxMetal from the .smd or mapinfo.lua).
---@return nil
function Spring.SetMetalAmount(x, z, metalAmount) end