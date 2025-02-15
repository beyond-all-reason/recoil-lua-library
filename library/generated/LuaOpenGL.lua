
---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 1.0.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: LuaOpenGL.cpp
---
---@meta

---Lua OpenGL API
---
---@see rts/Lua/LuaOpenGL.cpp

---Text
---
---@section text

gl = {

}

---@param text string
---@param x number
---@param y number
---@param size number
---@param options string? concatenated string of option characters.
---
---- horizontal alignment:
---- 'c' = center
---- 'r' = right
---- vertical alignment:
---- 'a' = ascender
---- 't' = top
---- 'v' = vertical center
---- 'x' = baseline
---- 'b' = bottom
---- 'd' = descender
---- decorations:
---- 'o' = black outline
---- 'O' = white outline
---- 's' = shadow
---- other:
---- 'n' = don't round vertex coords to nearest integer (font may get blurry)
---@return nil
function gl.Text(text, x, y, size, options) end

---Draw Basics
---
---@section draw_basics

---@param r number Red
---@param g number Green
---@param b number Blue
---@param a number? Alpha (Default: 1.0f)
function gl.Color(r, g, b, a) end

---@param rgbs [number,number,number,number] Red, green, blue, alpha
function gl.Color(rgbs) end

---@param rgb [number,number,number] Red, green, blue
function gl.Color(rgb) end