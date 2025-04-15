---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.2.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaMetalMap.cpp
---
---@meta

---Metal Map Lua API
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/4a9852c6504a2c80930e6c7b4919253fe382af52/rts/Lua/LuaMetalMap.cpp#L13-L16" target="_blank">source</a>]
---
---@see rts/Lua/LuaMetalMap.cpp

---[<a href="https://github.com/beyond-all-reason/spring/blob/4a9852c6504a2c80930e6c7b4919253fe382af52/rts/Lua/LuaMetalMap.cpp#L34-L38" target="_blank">source</a>]
---
---@return integer x X coordinate in worldspace / `Game.metalMapSquareSize`.
---@return integer z Z coordinate in worldspace / `Game.metalMapSquareSize`.
function Spring.GetMetalMapSize() end

---Returns the amount of metal on a single square.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/4a9852c6504a2c80930e6c7b4919253fe382af52/rts/Lua/LuaMetalMap.cpp#L47-L53" target="_blank">source</a>]
---
---@param x integer X coordinate in worldspace / `Game.metalMapSquareSize`.
---@param z integer Z coordinate in worldspace / `Game.metalMapSquareSize`.
---@return number amount
function Spring.GetMetalAmount(x, z) end

---Sets the amount of metal on a single square.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/4a9852c6504a2c80930e6c7b4919253fe382af52/rts/Lua/LuaMetalMap.cpp#L64-L71" target="_blank">source</a>]
---
---@param x integer X coordinate in worldspace / `Game.metalMapSquareSize`.
---@param z integer Z coordinate in worldspace / `Game.metalMapSquareSize`.
---@param metalAmount number must be between 0 and 255*maxMetal (with maxMetal from the .smd or mapinfo.lua).
---@return nil
function Spring.SetMetalAmount(x, z, metalAmount) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/4a9852c6504a2c80930e6c7b4919253fe382af52/rts/Lua/LuaMetalMap.cpp#L83-L88" target="_blank">source</a>]
---
---@param x integer X coordinate in worldspace / `Game.metalMapSquareSize`.
---@param z integer Z coordinate in worldspace / `Game.metalMapSquareSize`.
---@return number extraction
function Spring.GetMetalExtraction(x, z) end