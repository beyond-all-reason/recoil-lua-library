---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 1.1.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaConstGL.cpp
---
---@meta

---OpenGL Constants
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L12-L15" target="_blank">source</a>]
---
---@see rts/Lua/LuaConstGL.cpp

---Drawing Primitives
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L21-L24" target="_blank">source</a>]
---
---@section primitives

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L26-L40" target="_blank">source</a>]
---
---@enum GL
GL = {
	---@type number
	POINTS = nil,

	---@type number
	LINES = nil,

	---@type number
	LINE_LOOP = nil,

	---@type number
	LINE_STRIP = nil,

	---@type number
	TRIANGLES = nil,

	---@type number
	TRIANGLE_STRIP = nil,

	---@type number
	TRIANGLE_FAN = nil,

	---@type number
	QUADS = nil,

	---@type number
	QUAD_STRIP = nil,

	---@type number
	POLYGON = nil,

	---@type number
	PATCHES = nil,

	---@type number
	ZERO = nil,

	---@type number
	ONE = nil,

	---@type number
	SRC_COLOR = nil,

	---@type number
	ONE_MINUS_SRC_COLOR = nil,

	---@type number
	SRC_ALPHA = nil,

	---@type number
	ONE_MINUS_SRC_ALPHA = nil,

	---@type number
	DST_ALPHA = nil,

	---@type number
	ONE_MINUS_DST_ALPHA = nil,

	---@type number
	ZERO = nil,

	---@type number
	ONE = nil,

	---@type number
	SRC_COLOR = nil,

	---@type number
	ONE_MINUS_SRC_COLOR = nil,

	---@type number
	SRC_ALPHA = nil,

	---@type number
	ONE_MINUS_SRC_ALPHA = nil,

	---@type number
	DST_ALPHA = nil,

	---@type number
	ONE_MINUS_DST_ALPHA = nil,

	---@type number
	DST_COLOR = nil,

	---@type number
	ONE_MINUS_DST_COLOR = nil,

	---@type number
	SRC_ALPHA_SATURATE = nil,

	---@type number
	FUNC_ADD = nil,

	---@type number
	FUNC_SUBTRACT = nil,

	---@type number
	FUNC_REVERSE_SUBTRACT = nil,

	---@type number
	MIN = nil,

	---@type number
	MAX = nil,

	---@type number
	NEVER = nil,

	---@type number
	LESS = nil,

	---@type number
	EQUAL = nil,

	---@type number
	LEQUAL = nil,

	---@type number
	GREATER = nil,

	---@type number
	NOTEQUAL = nil,

	---@type number
	GEQUAL = nil,

	---@type number
	ALWAYS = nil,

	---@type number
	CLEAR = nil,

	---@type number
	AND = nil,

	---@type number
	AND_REVERSE = nil,

	---@type number
	COPY = nil,

	---@type number
	AND_INVERTED = nil,

	---@type number
	NOOP = nil,

	---@type number
	XOR = nil,

	---@type number
	OR = nil,

	---@type number
	NOR = nil,

	---@type number
	EQUIV = nil,

	---@type number
	INVERT = nil,

	---@type number
	OR_REVERSE = nil,

	---@type number
	COPY_INVERTED = nil,

	---@type number
	OR_INVERTED = nil,

	---@type number
	NAND = nil,

	---@type number
	SET = nil,

	---@type number
	BACK = nil,

	---@type number
	FRONT = nil,

	---@type number
	FRONT_AND_BACK = nil,

	---@type number
	POINT = nil,

	---@type number
	LINE = nil,

	---@type number
	FILL = nil,

	---@type number
	DEPTH_BUFFER_BIT = nil,

	---@type number
	ACCUM_BUFFER_BIT = nil,

	---@type number
	STENCIL_BUFFER_BIT = nil,

	---@type number
	COLOR_BUFFER_BIT = nil,

	---@type number
	FLAT = nil,

	---@type number
	SMOOTH = nil,

	---@type number
	MODELVIEW = nil,

	---@type number
	PROJECTION = nil,

	---@type number
	TEXTURE = nil,

	---@type number
	NEAREST = nil,

	---@type number
	LINEAR = nil,

	---@type number
	NEAREST_MIPMAP_NEAREST = nil,

	---@type number
	LINEAR_MIPMAP_NEAREST = nil,

	---@type number
	NEAREST_MIPMAP_LINEAR = nil,

	---@type number
	LINEAR_MIPMAP_LINEAR = nil,

	---@type number
	REPEAT = nil,

	---@type number
	MIRRORED_REPEAT = nil,

	---@type number
	CLAMP = nil,

	---@type number
	CLAMP_TO_EDGE = nil,

	---@type number
	CLAMP_TO_BORDER = nil,

	---@type number
	TEXTURE_ENV = nil,

	---@type number
	TEXTURE_ENV_MODE = nil,

	---@type number
	TEXTURE_ENV_COLOR = nil,

	---@type number
	MODULATE = nil,

	---@type number
	DECAL = nil,

	---@type number
	BLEND = nil,

	---@type number
	REPLACE = nil,

	---@type number
	TEXTURE_GEN_MODE = nil,

	---@type number
	EYE_PLANE = nil,

	---@type number
	OBJECT_PLANE = nil,

	---@type number
	EYE_LINEAR = nil,

	---@type number
	OBJECT_LINEAR = nil,

	---@type number
	SPHERE_MAP = nil,

	---@type number
	NORMAL_MAP = nil,

	---@type number
	REFLECTION_MAP = nil,

	---@type number
	S = nil,

	---@type number
	T = nil,

	---@type number
	R = nil,

	---@type number
	Q = nil,

	---@type number
	CURRENT_BIT = nil,

	---@type number
	POINT_BIT = nil,

	---@type number
	LINE_BIT = nil,

	---@type number
	POLYGON_BIT = nil,

	---@type number
	POLYGON_STIPPLE_BIT = nil,

	---@type number
	PIXEL_MODE_BIT = nil,

	---@type number
	LIGHTING_BIT = nil,

	---@type number
	FOG_BIT = nil,

	---@type number
	DEPTH_BUFFER_BIT = nil,

	---@type number
	ACCUM_BUFFER_BIT = nil,

	---@type number
	STENCIL_BUFFER_BIT = nil,

	---@type number
	VIEWPORT_BIT = nil,

	---@type number
	TRANSFORM_BIT = nil,

	---@type number
	ENABLE_BIT = nil,

	---@type number
	COLOR_BUFFER_BIT = nil,

	---@type number
	HINT_BIT = nil,

	---@type number
	EVAL_BIT = nil,

	---@type number
	LIST_BIT = nil,

	---@type number
	TEXTURE_BIT = nil,

	---@type number
	SCISSOR_BIT = nil,

	---@type number
	ALL_ATTRIB_BITS = nil,

	---@type number
	FOG_HINT = nil,

	---@type number
	LINE_SMOOTH_HINT = nil,

	---@type number
	POINT_SMOOTH_HINT = nil,

	---@type number
	POLYGON_SMOOTH_HINT = nil,

	---@type number
	PERSPECTIVE_CORRECTION_HINT = nil,

	---@type number
	DONT_CARE = nil,

	---@type number
	FASTEST = nil,

	---@type number
	NICEST = nil,

	---@type number
	AMBIENT = nil,

	---@type number
	DIFFUSE = nil,

	---@type number
	SPECULAR = nil,

	---@type number
	POSITION = nil,

	---@type number
	SPOT_DIRECTION = nil,

	---@type number
	SPOT_EXPONENT = nil,

	---@type number
	SPOT_CUTOFF = nil,

	---@type number
	CONSTANT_ATTENUATION = nil,

	---@type number
	LINEAR_ATTENUATION = nil,

	---@type number
	QUADRATIC_ATTENUATION = nil,

	---@type number
	VERTEX_SHADER = nil,

	---@type number
	TESS_CONTROL_SHADER = nil,

	---@type number
	TESS_EVALUATION_SHADER = nil,

	---@type number
	GEOMETRY_SHADER = nil,

	---@type number
	FRAGMENT_SHADER = nil,

	---@type number
	GEOMETRY_INPUT_TYPE = nil,

	---@type number
	GEOMETRY_OUTPUT_TYPE = nil,

	---@type number
	GEOMETRY_VERTICES_OUT = nil,

	---@type number
	PATCH_VERTICES = nil,

	---@type number
	PATCH_DEFAULT_OUTER_LEVEL = nil,

	---@type number
	PATCH_DEFAULT_INNER_LEVEL = nil,

	---@type number
	BYTE = nil,

	---@type number
	UNSIGNED_BYTE = nil,

	---@type number
	SHORT = nil,

	---@type number
	UNSIGNED_SHORT = nil,

	---@type number
	INT = nil,

	---@type number
	UNSIGNED_INT = nil,

	---@type number
	FLOAT = nil,

	---@type number
	FLOAT_VEC4 = nil,

	---@type number
	INT_VEC4 = nil,

	---@type number
	UNSIGNED_INT_VEC4 = nil,

	---@type number
	FLOAT_MAT4 = nil,

	---@type number
	ELEMENT_ARRAY_BUFFER = nil,

	---@type number
	ARRAY_BUFFER = nil,

	---@type number
	UNIFORM_BUFFER = nil,

	---@type number
	SHADER_STORAGE_BUFFER = nil
}

---BlendingFactorDest
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L58-L61" target="_blank">source</a>]
---
---@section blendingfactordest

---BlendingFactorSrc
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L83-L86" target="_blank">source</a>]
---
---@section blendingfactorsrc

---AlphaFunction and DepthFunction
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L117-L120" target="_blank">source</a>]
---
---@section alphadepth

---LogicOp
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L142-L145" target="_blank">source</a>]
---
---@section logicop

---Culling
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L183-L186" target="_blank">source</a>]
---
---@section culling

---PolygonMode
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L198-L201" target="_blank">source</a>]
---
---@section polygonmode

---Clear Bits
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L213-L216" target="_blank">source</a>]
---
---@section clearbits

---ShadeModel
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L230-L233" target="_blank">source</a>]
---
---@section shademodel

---MatrixMode
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L243-L246" target="_blank">source</a>]
---
---@section matrixmode

---Texture Filtering
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L258-L261" target="_blank">source</a>]
---
---@section texturefiltering

---Texture Clamping
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L279-L282" target="_blank">source</a>]
---
---@section textureclamping

---Texture Environment
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L298-L301" target="_blank">source</a>]
---
---@section textureenvironment

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L320-L320" target="_blank">source</a>]
---
---@field GL_TEXTURE_FILTER_CONTROL

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L322-L322" target="_blank">source</a>]
---
---@field GL_TEXTURE_LOD_BIAS

---Texture Generation
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L325-L328" target="_blank">source</a>]
---
---@section texturegeneration

---glPushAttrib() bits
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L358-L361" target="_blank">source</a>]
---
---@section glpushattribbits

---glHint() targets
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L410-L413" target="_blank">source</a>]
---
---@section glhinttargets

---glHint() modes
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L426-L429" target="_blank">source</a>]
---
---@section glhintmodes

---Light Specification
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L441-L444" target="_blank">source</a>]
---
---@section lightspecification

---Shader Types
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L470-L473" target="_blank">source</a>]
---
---@section shadertypes

---Geometry Shader Parameters
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L489-L492" target="_blank">source</a>]
---
---@section geometryshaderparameters

---Tesselation control shader parameters
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L504-L507" target="_blank">source</a>]
---
---@section tesselationcontrolshaderparameters

---OpenGL Data Types
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L519-L522" target="_blank">source</a>]
---
---@section OpenGL_Data_Types

---OpenGL Buffer Types
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L550-L553" target="_blank">source</a>]
---
---@section OpenGL_Buffer_Types

---FBO Attachments
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L662-L665" target="_blank">source</a>]
---
---@section fboattachments

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L666-L666" target="_blank">source</a>]
---
---@field GL_COLOR_ATTACHMENT0_EXT 0x8CE0

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L668-L668" target="_blank">source</a>]
---
---@field GL_COLOR_ATTACHMENT1_EXT 0x8CE1

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L670-L670" target="_blank">source</a>]
---
---@field GL_COLOR_ATTACHMENT2_EXT 0x8CE2

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L672-L672" target="_blank">source</a>]
---
---@field GL_COLOR_ATTACHMENT3_EXT 0x8CE3

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L674-L674" target="_blank">source</a>]
---
---@field GL_COLOR_ATTACHMENT4_EXT 0x8CE4

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L676-L676" target="_blank">source</a>]
---
---@field GL_COLOR_ATTACHMENT5_EXT 0x8CE5

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L678-L678" target="_blank">source</a>]
---
---@field GL_COLOR_ATTACHMENT6_EXT 0x8CE6

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L680-L680" target="_blank">source</a>]
---
---@field GL_COLOR_ATTACHMENT7_EXT 0x8CE7

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L682-L682" target="_blank">source</a>]
---
---@field GL_COLOR_ATTACHMENT8_EXT 0x8CE8

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L684-L684" target="_blank">source</a>]
---
---@field GL_COLOR_ATTACHMENT9_EXT 0x8CE9

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L686-L686" target="_blank">source</a>]
---
---@field GL_COLOR_ATTACHMENT10_EXT 0x8CEA

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L688-L688" target="_blank">source</a>]
---
---@field GL_COLOR_ATTACHMENT11_EXT 0x8CEB

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L690-L690" target="_blank">source</a>]
---
---@field GL_COLOR_ATTACHMENT12_EXT 0x8CEC

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L692-L692" target="_blank">source</a>]
---
---@field GL_COLOR_ATTACHMENT13_EXT 0x8CED

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L694-L694" target="_blank">source</a>]
---
---@field GL_COLOR_ATTACHMENT14_EXT 0x8CEE

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L696-L696" target="_blank">source</a>]
---
---@field GL_COLOR_ATTACHMENT15_EXT 0x8CEF

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L698-L698" target="_blank">source</a>]
---
---@field GL_DEPTH_ATTACHMENT_EXT 0x8D00

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L700-L700" target="_blank">source</a>]
---
---@field GL_STENCIL_ATTACHMENT_EXT 0x8D20

---OpenGL Object Types
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L705-L708" target="_blank">source</a>]
---
---@section objecttypes

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L709-L709" target="_blank">source</a>]
---
---@field GL_BUFFER 0x82E0

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L711-L711" target="_blank">source</a>]
---
---@field GL_SHADER 0x82E1

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L713-L713" target="_blank">source</a>]
---
---@field GL_PROGRAM 0x82E2

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L715-L715" target="_blank">source</a>]
---
---@field GL_VERTEX_ARRAY 0x8074

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L717-L717" target="_blank">source</a>]
---
---@field GL_QUERY 0x82E3

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L719-L719" target="_blank">source</a>]
---
---@field GL_PROGRAM_PIPELINE 0x82E4

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L721-L721" target="_blank">source</a>]
---
---@field GL_TRANSFORM_FEEDBACK 0x8E22

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L723-L723" target="_blank">source</a>]
---
---@field GL_RENDERBUFFER 0x8D41

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L725-L725" target="_blank">source</a>]
---
---@field GL_FRAMEBUFFER 0x8D40

---Not included, but useful texture Formats
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L734-L737" target="_blank">source</a>]
---
---@section textureformats

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L738-L738" target="_blank">source</a>]
---
---@field GL_RGBA16F_ARB 0x881A

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L739-L739" target="_blank">source</a>]
---
---@field GL_RGBA32F_ARB 0x8814

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L740-L740" target="_blank">source</a>]
---
---@field GL_DEPTH_COMPONENT 0x1902

---Not included, but useful RBO Formats
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L742-L745" target="_blank">source</a>]
---
---@section rboformats

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L746-L746" target="_blank">source</a>]
---
---@field GL_RGB 0x1907

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L747-L747" target="_blank">source</a>]
---
---@field GL_RGBA 0x1908

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L748-L748" target="_blank">source</a>]
---
---@field GL_DEPTH_COMPONENT 0x1902

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L749-L749" target="_blank">source</a>]
---
---@field GL_STENCIL_INDEX 0x1901

---Not included, but useful FBO Targets
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L751-L754" target="_blank">source</a>]
---
---@section fbotargets

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L755-L755" target="_blank">source</a>]
---
---@field GL_FRAMEBUFFER_EXT 0x8D40

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L756-L756" target="_blank">source</a>]
---
---@field GL_READ_FRAMEBUFFER_EXT 0x8CA8

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L757-L757" target="_blank">source</a>]
---
---@field GL_DRAW_FRAMEBUFFER_EXT 0x8CA9

---Not included, but useful FBO Status
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L759-L762" target="_blank">source</a>]
---
---@section fbostatus

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L763-L763" target="_blank">source</a>]
---
---@field GL_FRAMEBUFFER_COMPLETE_EXT 0x8CD5

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L764-L764" target="_blank">source</a>]
---
---@field GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT 0x8CD6

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L765-L765" target="_blank">source</a>]
---
---@field GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT 0x8CD7

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L766-L766" target="_blank">source</a>]
---
---@field GL_FRAMEBUFFER_INCOMPLETE_DUPLICATE_ATTACHMENT_EXT 0x8CD8

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L767-L767" target="_blank">source</a>]
---
---@field GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT 0x8CD9

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L768-L768" target="_blank">source</a>]
---
---@field GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT 0x8CDA

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L769-L769" target="_blank">source</a>]
---
---@field GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT 0x8CDB

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L770-L770" target="_blank">source</a>]
---
---@field GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT 0x8CDC

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L771-L771" target="_blank">source</a>]
---
---@field GL_FRAMEBUFFER_UNSUPPORTED_EXT 0x8CDD

---[<a href="https://github.com/beyond-all-reason/spring/blob/f70826c92e9d66780b8bcdfdd7182791d56cfb2a/rts/Lua/LuaConstGL.cpp#L772-L772" target="_blank">source</a>]
---
---@field GL_FRAMEBUFFER_STATUS_ERROR_EXT 0x8CDE