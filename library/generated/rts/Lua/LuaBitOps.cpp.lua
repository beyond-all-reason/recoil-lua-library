---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.2.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaBitOps.cpp
---
---@meta

---math bit extensions
---
---Note: there are no bit shift. Use those Lua functions instead for 24 bits bitshift
---24 bits because only the 24 bits of the mantissa can be easily used in a 32 bit float
---bitshift functions (<<, >> equivalent)
---
---    -- left shift
---    local function lsh(value,shift)
---        return (value*(2^shift)) % 2^24
---    end
---
---    -- right shift
---    local function rsh(value,shift)
---        return math.floor(value/2^shift) % 2^24
---    end
---
---[<a href="https://github.com/beyond-all-reason/RecoilEngine/blob/0aa5469497c42b9066a304f13f76ea460aa69b07/rts/Lua/LuaBitOps.cpp#L17-L35" target="_blank">source</a>]
---
---@see rts/Lua/LuaBitOps.cpp

---Returns the bitwise OR of all arguments. Only use up to 24 bit integers.
---
---[<a href="https://github.com/beyond-all-reason/RecoilEngine/blob/0aa5469497c42b9066a304f13f76ea460aa69b07/rts/Lua/LuaBitOps.cpp#L57-L62" target="_blank">source</a>]
---
---@param ... integer
---@return integer result
function math.bit_or(...) end

---Returns the bitwise AND of all arguments. Only use up to 24 bit integers.
---
---[<a href="https://github.com/beyond-all-reason/RecoilEngine/blob/0aa5469497c42b9066a304f13f76ea460aa69b07/rts/Lua/LuaBitOps.cpp#L74-L79" target="_blank">source</a>]
---
---@param ... integer
---@return integer result
function math.bit_and(...) end

---Returns the bitwise XOR of all arguments. Only use up to 24 bit integers.
---
---[<a href="https://github.com/beyond-all-reason/RecoilEngine/blob/0aa5469497c42b9066a304f13f76ea460aa69b07/rts/Lua/LuaBitOps.cpp#L91-L96" target="_blank">source</a>]
---
---@param ... integer
---@return integer result
function math.bit_xor(...) end

---Returns the bitwise NOT of the 24 bit integer argument.
---
---[<a href="https://github.com/beyond-all-reason/RecoilEngine/blob/0aa5469497c42b9066a304f13f76ea460aa69b07/rts/Lua/LuaBitOps.cpp#L108-L113" target="_blank">source</a>]
---
---@param value integer
---@return integer result
function math.bit_inv(value) end

---Set each of the bits of a 24 bit integer. Returns result = result OR (1 << a1) OR (1 << a2) OR ...;)
---
---[<a href="https://github.com/beyond-all-reason/RecoilEngine/blob/0aa5469497c42b9066a304f13f76ea460aa69b07/rts/Lua/LuaBitOps.cpp#L122-L127" target="_blank">source</a>]
---
---@param ... integer
---@return integer result
function math.bit_bits(...) end