---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 1.1.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaOpenGL.cpp
---
---@meta

---Lua OpenGL API
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaOpenGL.cpp#L86-L91" target="_blank">source</a>]
---
---@see rts/Lua/LuaOpenGL.cpp

---Text
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaOpenGL.cpp#L1275-L1278" target="_blank">source</a>]
---
---@section text

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaOpenGL.cpp#L1296-L1298" target="_blank">source</a>]
gl = {}

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaOpenGL.cpp#L1300-L1325" target="_blank">source</a>]
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
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaOpenGL.cpp#L2531-L2534" target="_blank">source</a>]
---
---@section draw_basics

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaOpenGL.cpp#L2536-L2542" target="_blank">source</a>]
---
---@param r number Red
---@param g number Green
---@param b number Blue
---@param a number? Alpha (Default: 1.0f)
function gl.Color(r, g, b, a) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaOpenGL.cpp#L2543-L2546" target="_blank">source</a>]
---
---@param rgbs [number,number,number,number] Red, green, blue, alpha
function gl.Color(rgbs) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaOpenGL.cpp#L2547-L2550" target="_blank">source</a>]
---
---@param rgb [number,number,number] Red, green, blue
function gl.Color(rgb) end