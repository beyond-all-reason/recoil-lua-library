---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 1.1.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaShaders.cpp
---
---@meta

---Shader creation and management
---
---These functions are ONLY available if the graphics adapter supports GLSL.
---Please test in your scripts if one of them exists before you use them. In headless mode, the gl. callouts are nil.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L32-L39" target="_blank">source</a>]
---
---@see rts/Lua/LuaShaders.cpp

---Returns the shader compilation error log. This is empty if the shader linking failed, in that case, check your in/out blocks and ensure they match.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L198-L202" target="_blank">source</a>]
---
---@return string infoLog
function gl.GetShaderLog() end

---A table of uniform name to value.
---
---The Uniforms are the values you send along with the shader-program. To use
---them in the shader-program declare them like this: `uniform float frame;`
---
---Specify a Lua array to initialize GLSL arrays.
---
---The engine will automatically fill in an appropriately named uniform for team
---colour if it is declared;
---
---```glsl
---uniform vec4 teamColor;
---```
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L552-L568" target="_blank">source</a>]
---
---@class UniformParam<T> : { [string]: T|T[] }
local UniformParam = {}

---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L570-L619" target="_blank">source</a>]
---
---@class ShaderParams
---
---@field vertex string?
---
---The "Vertex" or vertex-shader is your GLSL-Code as string, its written in a
---C-Dialect.  This shader is busy deforming the geometry of a unit but it can
---not create new polygons. Use it for waves, wobbling surfaces etc.
---
---@field tcs string?
---
---The "TCS" or Tesselation Control Shader controls how much tessellation a
---particular patch gets; it also defines the size of a patch, thus allowing it
---to augment data. It can also filter vertex data taken from the vertex shader.
---The main purpose of the TCS is to feed the tessellation levels to the
---Tessellation primitive generator stage, as well as to feed patch data (as its
---output values) to the Tessellation Evaluation Shader stage.
---
---@field tes string?
---
---The "TES" or Tesselation Evaluation Shader takes the abstract patch generated
---by the tessellation primitive generation stage, as well as the actual vertex
---data for the entire patch, and generates a particular vertex from it. Each
---TES invocation generates a single vertex. It can also take per-patch data
---provided by the Tessellation Control Shader.
---
---@field geometry string?
---
---The "Geometry" or Geometry-shader can create new vertices and vertice-stripes
---from points.
---
---@field fragment string?
---
---The "Fragment" or Fragment-shader (sometimes called pixel-Shader) is post
---processing the already rendered picture (for example drawing stars on the
---sky).
---
---Remember textures are not always 2 dimensional pictures. They can contain
---information about the depth, or the third value marks areas and the strength
---at which these are processed.
---
---@field uniform UniformParam<number>?
---@field uniformInt UniformParam<integer>?
---@field uniformFloat UniformParam<number>?
---@field uniformMatrix UniformParam<number>?
---@field geoInputType integer? inType
---@field geoOutputType integer? outType
---@field geoOutputVerts integer? maxVerts
---@field definitions string? string of shader #defines"
local ShaderParams = {}

---Create a shader.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L621-L627" target="_blank">source</a>]
---
---@param shaderParams ShaderParams
---@return integer shaderID
function gl.CreateShader(shaderParams) end

---Deletes a shader identified by shaderID
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L789-L793" target="_blank">source</a>]
---
---@param shaderID integer
function gl.DeleteShader(shaderID) end

---Binds a shader program identified by shaderID. Pass 0 to disable the shader. Returns whether the shader was successfully bound.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L806-L811" target="_blank">source</a>]
---
---@param shaderID integer
---@return boolean linked
function gl.UseShader(shaderID) end

---Binds a shader program identified by shaderID, and calls the Lua func with
---the specified arguments.
---
---Can be used in NON-drawing events (to update uniforms etc.)!
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L839-L849" target="_blank">source</a>]
---
---@param shaderID integer
---@param func function
---@param ... any Arguments
function gl.ActiveShader(shaderID, func, ...) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L922-L929" target="_blank">source</a>]
---
---@class ActiveUniform
---@field name string
---@field type string String name of `GL_*` constant.
---@field length integer The character length of `name`.
---@field size integer
---@field location GL
local ActiveUniform = {}

---Query the active (actually used) uniforms of a shader and identify their
---names, types (float, int, uint) and sizes (float, vec4, ...).
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L931-L938" target="_blank">source</a>]
---
---@param shaderID integer
---@return ActiveUniform[] activeUniforms
function gl.GetActiveUniforms(shaderID) end

---Returns the locationID of a shaders uniform. Needed for changing uniform
---values with function `gl.Uniform`.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L966-L974" target="_blank">source</a>]
---
---@param shaderID integer
---@param name string
---@return GL locationID
function gl.GetUniformLocation(shaderID, name) end

---Sets the uniform float value at the locationID for the currently active
---shader. Shader must be activated before setting uniforms.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L1045-L1055" target="_blank">source</a>]
---
---@param locationID GL|string uniformName
---@param f1 number
---@param f2 number?
---@param f3 number?
---@param f4 number?
function gl.Uniform(locationID, f1, f2, f3, f4) end

---Sets the uniform int value at the locationID for the currently active shader.
---Shader must be activated before setting uniforms.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L1086-L1096" target="_blank">source</a>]
---
---@param locationID integer|string uniformName
---@param int1 integer
---@param int2 integer?
---@param int3 integer?
---@param int4 integer?
function gl.UniformInt(locationID, int1, int2, int3, int4) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L1149-L1154" target="_blank">source</a>]
---
---@alias UniformArrayType
---| 1 # int
---| 2 # float
---| 3 # float matrix

---Sets the an array of uniform values at the locationID for the currently
---active shader.
---
---Shader must be activated before setting uniforms.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L1156-L1166" target="_blank">source</a>]
---
---@param locationID integer|string uniformName
---@param type UniformArrayType
---@param uniforms number[] Array up to 1024 elements
function gl.UniformArray(locationID, type, uniforms) end

---Sets the a uniform mat4 locationID for the currently active shader.
---
---Shader must be activated before setting uniforms.
---
---Can set one one common matrix like shadow, or by passing 16 additional
---numbers for the matrix.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L1205-L1216" target="_blank">source</a>]
---
---@param locationID integer|string uniformName
---@param matrix "shadows"|"camera"|"caminv"|"camprj" Name of common matrix.
function gl.UniformMatrix(locationID, matrix) end

---Sets the a uniform mat4 locationID for the currently active shader.
---
---Shader must be activated before setting uniforms.
---
---Can set one one common matrix like shadow, or by passing 16 additional
---numbers for the matrix.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L1218-L1229" target="_blank">source</a>]
---
---@param locationID number|string uniformName
---@param matrix number[] A 2x2, 3x3 or 4x4 matrix.
function gl.UniformMatrix(locationID, matrix) end

---Return the GLSL compliant definition of UniformMatricesBuffer(idx=0) or UniformParamsBuffer(idx=1) structure.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L1306-L1314" target="_blank">source</a>]
---
---@param index number
---@return string glslDefinition
function gl.GetEngineUniformBufferDef(index) end

---Return the GLSL compliant definition of ModelUniformData structure (per Unit/Feature buffer available on GPU)
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L1328-L1336" target="_blank">source</a>]
---
---@param index number
---@return string glslDefinition
function gl.GetEngineModelUniformDataDef(index) end

---Sets the Geometry shader parameters for shaderID. Needed by geometry shader programs (check the opengl GL_ARB_geometry_shader4 extension for glProgramParameteri)
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L1346-L1353" target="_blank">source</a>]
---
---@param shaderID integer
---@param param number
---@param number number
---@return nil
function gl.SetGeometryShaderParameter(shaderID, param, number) end

---Sets the tesselation shader parameters for `shaderID`.
---
---Needed by tesselation shader programs. (Check the opengl
---`GL_ARB_tessellation_shader` extension for `glProgramParameteri`).
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/511d5cf5ec2b7469e32bb5543a68f3c64dc6c01d/rts/Lua/LuaShaders.cpp#L1374-L1384" target="_blank">source</a>]
---
---@param param integer
---@param value integer
---@return nil
function gl.SetTesselationShaderParameter(param, value) end