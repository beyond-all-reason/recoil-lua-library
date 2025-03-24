---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.0.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaOpenGL.cpp
---
---@meta

---Lua OpenGL API
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/8089e9354cc98ac9ba86650211f702851fc5fc8a/rts/Lua/LuaOpenGL.cpp#L86-L89" target="_blank">source</a>]
gl = {}

---Text
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/8089e9354cc98ac9ba86650211f702851fc5fc8a/rts/Lua/LuaOpenGL.cpp#L1272-L1275" target="_blank">source</a>]
---
---@section text

---[<a href="https://github.com/beyond-all-reason/spring/blob/8089e9354cc98ac9ba86650211f702851fc5fc8a/rts/Lua/LuaOpenGL.cpp#L1293-L1318" target="_blank">source</a>]
---
---@param text string
---@param x number
---@param y number
---@param size number
---@param options string? concatenated string of option characters.
---
---  - horizontal alignment:
---    - 'c' = center
---    - 'r' = right
---  - vertical alignment:
---    - 'a' = ascender
---    - 't' = top
---    - 'v' = vertical center
---    - 'x' = baseline
---    - 'b' = bottom
---    - 'd' = descender
---  - decorations:
---    - 'o' = black outline
---    - 'O' = white outline
---    - 's' = shadow
---  - other:
---    - 'n' = don't round vertex coords to nearest integer (font may get blurry)
---@return nil
function gl.Text(text, x, y, size, options) end

---Draw Basics
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/8089e9354cc98ac9ba86650211f702851fc5fc8a/rts/Lua/LuaOpenGL.cpp#L2524-L2527" target="_blank">source</a>]
---
---@section draw_basics

---[<a href="https://github.com/beyond-all-reason/spring/blob/8089e9354cc98ac9ba86650211f702851fc5fc8a/rts/Lua/LuaOpenGL.cpp#L2529-L2535" target="_blank">source</a>]
---
---@param r number Red
---@param g number Green
---@param b number Blue
---@param a number? Alpha (Default: 1.0f)
function gl.Color(r, g, b, a) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/8089e9354cc98ac9ba86650211f702851fc5fc8a/rts/Lua/LuaOpenGL.cpp#L2536-L2539" target="_blank">source</a>]
---
---@param rgbs [number,number,number,number] Red, green, blue, alpha
function gl.Color(rgbs) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/8089e9354cc98ac9ba86650211f702851fc5fc8a/rts/Lua/LuaOpenGL.cpp#L2540-L2543" target="_blank">source</a>]
---
---@param rgb [number,number,number] Red, green, blue
function gl.Color(rgb) end