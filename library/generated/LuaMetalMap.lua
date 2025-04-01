---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.0.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaMetalMap.cpp
---
---@meta

---Metal Map Lua API
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/d7027d8cba2242c9c981aa8f62c19a87a617241e/rts/Lua/LuaMetalMap.cpp#L13-L16" target="_blank">source</a>]
---
---@see rts/Lua/LuaMetalMap.cpp

---[<a href="https://github.com/beyond-all-reason/spring/blob/d7027d8cba2242c9c981aa8f62c19a87a617241e/rts/Lua/LuaMetalMap.cpp#L34-L38" target="_blank">source</a>]
---
---@return integer x X coordinate in worldspace/16.
---@return integer y Y coordinate in worldspace/16.
function Spring.GetMetalMapSize() end

---Returns the amount of metal on a single square.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/d7027d8cba2242c9c981aa8f62c19a87a617241e/rts/Lua/LuaMetalMap.cpp#L47-L53" target="_blank">source</a>]
---
---@param x integer X coordinate in worldspace/16.
---@param y integer Y coordinate in worldspace/16.
---@return number amount
function Spring.GetMetalAmount(x, y) end

---Sets the amount of metal on a single square.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/d7027d8cba2242c9c981aa8f62c19a87a617241e/rts/Lua/LuaMetalMap.cpp#L64-L71" target="_blank">source</a>]
---
---@param x integer X cooridnate in worldspace/16.
---@param z integer Y coordinate in worldspace/16.
---@param metalAmount number must be between 0 and 255*maxMetal (with maxMetal from the .smd or mapinfo.lua).
---@return nil
function Spring.SetMetalAmount(x, z, metalAmount) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/d7027d8cba2242c9c981aa8f62c19a87a617241e/rts/Lua/LuaMetalMap.cpp#L83-L88" target="_blank">source</a>]
---
---@param x integer X coordinate in worldspace/16.
---@param y integer Y coordinate in worldspace/16.
---@return integer extraction
function Spring.GetMetalExtraction(x, y) end