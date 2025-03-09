---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 1.1.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaMenu.cpp
---
---@meta

---[<a href="https://github.com/beyond-all-reason/spring/blob/c80024e36bb068da52e7d715b269abe73bc93338/rts/Lua/LuaMenu.cpp#L34-L37" target="_blank">source</a>]
---
---@class Menu : Callins
---@see Callins
local Menu = {}

---Called whenever LuaMenu is on with no game loaded.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/c80024e36bb068da52e7d715b269abe73bc93338/rts/Lua/LuaMenu.cpp#L372-L375" target="_blank">source</a>]
function Menu:ActivateMenu() end

---Called whenever LuaMenu is on with a game loaded.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/c80024e36bb068da52e7d715b269abe73bc93338/rts/Lua/LuaMenu.cpp#L393-L396" target="_blank">source</a>]
function Menu:ActivateGame() end

---Enables Draw{Genesis,Screen,ScreenPost} callins if true is returned,
---otherwise they are called once every 30 seconds. Only active when a game
---isn't running.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/c80024e36bb068da52e7d715b269abe73bc93338/rts/Lua/LuaMenu.cpp#L413-L420" target="_blank">source</a>]
---
---@return boolean allowDraw
function Menu:AllowDraw() end