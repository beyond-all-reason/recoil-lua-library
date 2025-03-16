---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.0.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaMathExtra.cpp
---
---@meta

---math extensions
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/08adbca45a977ce2503e21bf52147a45b3d2ec64/rts/Lua/LuaMathExtra.cpp#L13-L16" target="_blank">source</a>]
---
---@see rts/Lua/LuaMathExtra.cpp

---Returns the length of hypotenuse of right angle triangle with sides x and y,
---equivalent to `sqrt(x*x + y*y)`, but has better numerical stability and
---internally handles intermediate overflows/underflows, but is also slower.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/08adbca45a977ce2503e21bf52147a45b3d2ec64/rts/Lua/LuaMathExtra.cpp#L37-L46" target="_blank">source</a>]
---
---@param x number
---@param y number
---@return number `sqrt(x*x+y*y)`
function math.hypot(x, y) end

---Returns the length of the diagonal of an n-dimensional box (or the length of
---an n-component vector). Rather quick method that does not handle intermediate
---overflows/underflows nor is made for numerical stability.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/08adbca45a977ce2503e21bf52147a45b3d2ec64/rts/Lua/LuaMathExtra.cpp#L54-L63" target="_blank">source</a>]
---
---@param x number
---@param ... number
---@return number diagonal
function math.diag(x, ...) end

---Returns x clamped to min and max boundaries.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/08adbca45a977ce2503e21bf52147a45b3d2ec64/rts/Lua/LuaMathExtra.cpp#L77-L84" target="_blank">source</a>]
---
---@param value number
---@param min number
---@param max number
---@return number clamped
function math.clamp(value, min, max) end

---Returns 0 if x == 0, 1 if x > 0, -1 if x < 0
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/08adbca45a977ce2503e21bf52147a45b3d2ec64/rts/Lua/LuaMathExtra.cpp#L100-L105" target="_blank">source</a>]
---
---@param x number
---@return number sign
function math.sgn(x) end

---Returns linear interpolation between x and y with ratio a (x+(y-x)*a).
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/08adbca45a977ce2503e21bf52147a45b3d2ec64/rts/Lua/LuaMathExtra.cpp#L121-L128" target="_blank">source</a>]
---
---@param x number
---@param y number
---@param a number
---@return number (x+(y-x)*a)
function math.mix(x, y, a) end

---Returns x rounded to n decimals, if n is omitted or <=0, rounds to nearest
---integer. Note that Spring's Lua interpreter uses 32-bit floats for all
---numbers so max. precision is ~7 decimal digits.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/08adbca45a977ce2503e21bf52147a45b3d2ec64/rts/Lua/LuaMathExtra.cpp#L140-L149" target="_blank">source</a>]
---
---@param x number
---@param decimals number
---@return number rounded
function math.round(x, decimals) end

---Returns erf(x), the Gauss error function, between -1 and 1.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/08adbca45a977ce2503e21bf52147a45b3d2ec64/rts/Lua/LuaMathExtra.cpp#L173-L178" target="_blank">source</a>]
---
---@param x number
---@return number erf
function math.erf(x) end

---Applies the smoothstep function
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/08adbca45a977ce2503e21bf52147a45b3d2ec64/rts/Lua/LuaMathExtra.cpp#L186-L195" target="_blank">source</a>]
---
---Clamps and rescales v to a value between [0; 1] based on the edges and then applies the smoothstep function.
---For example math.smoothstep(10, 25, 15) is 0.259, because 15 is 0.333 of the way from 10 to 25, and smoothstep(0.333) is 0.259
---
---@param edge0 number
---@param edge1 number
---@param v number
---@return number smoothstep
function math.smoothstep(edge0, edge1, v) end

---Returns the normalize vector of an given vector.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/08adbca45a977ce2503e21bf52147a45b3d2ec64/rts/Lua/LuaMathExtra.cpp#L203-L209" target="_blank">source</a>]
---
---@param x number
---@param ... number
---@return number ... normalized
function math.normalize(x, ...) end