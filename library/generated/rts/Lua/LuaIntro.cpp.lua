---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.2.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaIntro.cpp
---
---@meta

---[<a href="https://github.com/beyond-all-reason/spring/blob/cb7d17009cf3f31793e72cd3356bfa752a897dc2/rts/Lua/LuaIntro.cpp#L49-L52" target="_blank">source</a>]
---
---@class Intro : Callins
---@see Callins
local Intro = {}

---Draws custom load screens.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/cb7d17009cf3f31793e72cd3356bfa752a897dc2/rts/Lua/LuaIntro.cpp#L332-L336" target="_blank">source</a>]
function Intro:DrawLoadScreen() end

---[<a href="https://github.com/beyond-all-reason/spring/blob/cb7d17009cf3f31793e72cd3356bfa752a897dc2/rts/Lua/LuaIntro.cpp#L359-L363" target="_blank">source</a>]
---
---@param message string
---@param replaceLastLine boolean
function Intro:LoadProgress(message, replaceLastLine) end