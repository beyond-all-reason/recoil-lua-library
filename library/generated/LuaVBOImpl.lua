---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.0.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaVBOImpl.cpp
---
---@meta

---Vertex Buffer Object
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L35-L41" target="_blank">source</a>]
---
---@class VBO
---@see LuaVBO.GetVBO
---@see rts/Lua/LuaVBOImpl.cpp
local VBO = {}

---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L109-L113" target="_blank">source</a>]
---
---@return nil
function VBO:Delete() end

---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L459-L468" target="_blank">source</a>]
---
---@alias VBODataType
---| GL.BYTE
---| GL.UNSIGNED_BYTE
---| GL.SHORT
---| GL.UNSIGNED_SHORT
---| GL.INT
---| GL.UNSIGNED_INT
---| GL.FLOAT

---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L470-L497" target="_blank">source</a>]
---
---@class VBOAttributeDef
---@field id integer The location in the vertex shader layout e.g.: layout (location = 0) in vec2
---aPos. optional attrib, specifies location in the vertex shader. If not
---specified the implementation will increment the counter starting from 0.
---There can be maximum 16 attributes (so id of 15 is max).
---@field name string
---The name for this VBO, only used for debugging.
---@field size integer?
---Defaults to to 4 for VBO. The number of floats that constitute 1 element in
---this buffer. e.g. for the previous layout (location = 0) in vec2 aPos, it
---would be size = 2.
---@field type VBODataType (Default: `GL.FLOAT`)
---
---The datatype of this element.
---@field normalized boolean? (Defaults: `false`)
---
---It's possible to submit say normal without normalizing them first, normalized
---will make sure data is normalized.
local VBOAttributeDef = {}

---Specify the kind of VBO you will be using.
---
---```lua
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L500-L538" target="_blank">source</a>]
---
---@usage terrainVertexVBO:Define(numPoints, {{ id = 0, name = "pos", size = 2 }})
---```
---
---It is usually an array of vertex/color/uv data, but can also be an array of
---instance uniforms.
---
---If you want to specify multiple instances of something to render, you will
---need to create another VBO, which also specifies the number of instances you
---wish to render, and the size of the data passed to each instance.
---
---If you want say 5 elements, and each element is defined in the layout:
---
---```lua
---{id = 0, name = "first", size = 1},{id = 1, name = "second", size = 2}}
---```
---
---Then the total size of your VBO will be `5 * (1 + 2)`.
---
---They will be laid out consecutively: `[1,2],[1,2],[1,2],[1,2],[1,2]`.
---
---This is important for when you call `VBO:Upload`, you need to make sure you
---enter your data into the Lua array correctly.
---@param size number The maximum number of elements this VBO can have.
---@param attribs number|VBOAttributeDef[]
---
---When number, the maximum number of elements this VBO can have.
---
---Otherwise, an array of arrays specifying the layout.
---@return nil
---@see GL.OpenGL_Data_Types
---@see VBO:Upload
function VBO:Define(size, attribs) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L586-L592" target="_blank">source</a>]
---
---@return number elementsCount
---@return number bufferSizeInBytes
---@return number size
function VBO:GetBufferSize() end

---Uploads the data (array of floats) into the VBO
---
---```lua
---vbo:Upload(posArray, 0, 1)
----- 0 is offset into vbo (on GPU) in this case no offset
----- 1 is lua index index into the Lua table, in this case it's same as default
----- Upload will upload from luaOffset to end of lua array
---```
---
---```lua
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L603-L635" target="_blank">source</a>]
---
---@usage rectInstanceVBO:Upload({1},0)
---```
---@param vboData number[] a lua array of values to upload into the VBO
---@param attributeIndex integer? (Default: `-1`)
---
---If supplied with non-default value then the data from vboData will only be
---used to upload the data to this particular attribute.
---
---The whole vboData is expected to contain only attributeIndex data.
---
---Otherwise all attributes get updated sequentially across attributes and elements.
---@param elemOffset integer? (Default: `0`) Which VBO element to start uploading data from Lua array into.
---@param luaStartIndex integer? (Default: `1`) Start uploading from that element in supplied Lua array.
---@param luaFinishIndex integer? Consider this element the last element in Lua array.
---@return number[] indexData
---@return integer elemOffset
---@return integer|[integer,integer,integer,integer] attrID
---@see VBO:Define
function VBO:Upload(vboData, attributeIndex, elemOffset, luaStartIndex, luaFinishIndex) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L678-L689" target="_blank">source</a>]
---
---@param attributeIndex integer? (Default: `-1`) when supplied with non-default value: only data
---from specified attribute will be downloaded - otherwise all attributes are
---downloaded
---@param elementOffset integer? (Default: `0`) download data starting from this element
---@param elementCount number? number of elements to download
---@param forceGPURead boolean? (Default: `false`) force downloading the data from GPU buffer as opposed
---to using shadow RAM buffer
---@return [number, ...][] vboData
function VBO:Download(attributeIndex, elementOffset, elementCount, forceGPURead) end

---Binds engine side vertex or index VBO containing models (units, features) data.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L1187-L1194" target="_blank">source</a>]
---
---Also fills in VBO definition data as they're set for engine models (no need to do VBO:Define()).
---
---@return nil|number buffer size in bytes
function VBO:ModelsVBO() end

---Fills in attribute data for each specified unitDefID
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L1206-L1231" target="_blank">source</a>]
---
---The instance data in that attribute will contain the offset to bind position
---matrix in global matrices SSBO and offset to uniform buffer structure in
---global per unit/feature uniform SSBO (unused for Unit/FeatureDefs), as
---well as some auxiliary data ushc as draw flags and team index.
---
---Data Layout:
---```
---SInstanceData:
---   , matOffset{ matOffset_ }            // updated during the following draw frames
---   , uniOffset{ uniOffset_ }            // updated during the following draw frames
---   , info{ teamIndex, drawFlags, 0, 0 } // not updated during the following draw frames
---   , aux1 { 0u }
---```
---
---@param unitDefIDs number|number[]
---@param attrID integer
---@param teamIdOpt integer?
---@param elementOffset integer?
---@return [number,number,number,number] instanceData
---@return integer elementOffset
---@return integer attrID
function VBO:InstanceDataFromUnitDefIDs(unitDefIDs, attrID, teamIdOpt, elementOffset) end

---Fills in attribute data for each specified featureDefID
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L1245-L1270" target="_blank">source</a>]
---
---The instance data in that attribute will contain the offset to bind position
---matrix in global matrices SSBO and offset to uniform buffer structure in
---global per unit/feature uniform SSBO (unused for Unit/FeatureDefs), as
---well as some auxiliary data ushc as draw flags and team index.
---
---Data Layout
---```
---SInstanceData:
---   , matOffset{ matOffset_ }            // updated during the following draw frames
---   , uniOffset{ uniOffset_ }            // updated during the following draw frames
---   , info{ teamIndex, drawFlags, 0, 0 } // not updated during the following draw frames
---   , aux1 { 0u }
---```
---
---@param featureDefIDs number|number[]
---@param attrID integer
---@param teamIdOpt integer?
---@param elementOffset integer?
---@return [number,number,number,number] instanceData
---@return integer elementOffset
---@return integer attrID
function VBO:InstanceDataFromFeatureDefIDs(featureDefIDs, attrID, teamIdOpt, elementOffset) end

---Fills in attribute data for each specified unitID
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L1284-L1310" target="_blank">source</a>]
---
---The instance data in that attribute will contain the offset to bind position
---matrix in global matrices SSBO and offset to uniform buffer structure in
---global per unit/feature uniform SSBO (unused for Unit/FeatureDefs), as
---well as some auxiliary data ushc as draw flags and team index.
---
---Data Layout
---
---```
---SInstanceData:
---   , matOffset{ matOffset_ }            // updated during the following draw frames
---   , uniOffset{ uniOffset_ }            // updated during the following draw frames
---   , info{ teamIndex, drawFlags, 0, 0 } // not updated during the following draw frames
---   , aux1 { 0u }
---```
---
---@param unitIDs number|number[]
---@param attrID integer
---@param teamIdOpt integer?
---@param elementOffset integer?
---@return [number,number,number,number] instanceData
---@return integer elementOffset
---@return integer attrID
function VBO:InstanceDataFromUnitIDs(unitIDs, attrID, teamIdOpt, elementOffset) end

---Fills in attribute data for each specified featureID
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L1322-L1338" target="_blank">source</a>]
---
---The instance data in that attribute will contain the offset to bind position
---matrix in global matrices SSBO and offset to uniform buffer structure in
---global per unit/feature uniform SSBO (unused for Unit/FeatureDefs), as
---well as some auxiliary data ushc as draw flags and team index.
---
---@param featureIDs number|number[]
---@param attrID integer
---@param teamIdOpt integer?
---@param elementOffset integer?
---@return [number,number,number,number] instanceData
---@return integer elementOffset
---@return integer attrID
function VBO:InstanceDataFromFeatureIDs(featureIDs, attrID, teamIdOpt, elementOffset) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L1350-L1360" target="_blank">source</a>]
---
---@param projectileIDs integer|integer[]
---@param attrID integer
---@param teamIdOpt integer?
---@param elementOffset integer?
---@return number[] matDataVec 4x4 matrix
---@return integer elemOffset
---@return integer|[integer,integer,integer,integer] attrID
function VBO:MatrixDataFromProjectileIDs(projectileIDs, attrID, teamIdOpt, elementOffset) end

---Bind a range within a buffer object to an indexed buffer target
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L1432-L1446" target="_blank">source</a>]
---
---Generally mimics
---https://registry.khronos.org/OpenGL-Refpages/gl4/html/glBindBufferRange.xhtml
---except offset and size are specified in number of elements / element indices.
---
---@param index integer should be in the range between
---`5 < index < GL_MAX_UNIFORM_BUFFER_BINDINGS` value (usually 31)
---@param elementOffset integer?
---@param elementCount number?
---@param target number? glEnum
---@return integer bindingIndex when successful, -1 otherwise
function VBO:BindBufferRange(index, elementOffset, elementCount, target) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L1453-L1461" target="_blank">source</a>]
---
---@param index integer
---@param elementOffset integer?
---@param elementCount number?
---@param target number? glEnum
---@return number bindingIndex when successful, -1 otherwise
function VBO:UnbindBufferRange(index, elementOffset, elementCount, target) end

---Logs the definition of the VBO to the console
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L1468-L1472" target="_blank">source</a>]
---
---@return nil
function VBO:DumpDefinition() end

---Gets the OpenGL Buffer ID
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaVBOImpl.cpp#L1489-L1493" target="_blank">source</a>]
---
---@return number bufferID
function VBO:GetID() end