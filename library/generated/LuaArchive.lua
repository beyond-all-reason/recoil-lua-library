---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.0.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaArchive.cpp
---
---@meta

---[<a href="https://github.com/beyond-all-reason/spring/blob/0b74f9f72bffb37cde61d76ec31c5381e813e316/rts/Lua/LuaArchive.cpp#L52-L55" target="_blank">source</a>]
---
---@return string[] mapNames
function VFS.GetMaps() end

---[<a href="https://github.com/beyond-all-reason/spring/blob/0b74f9f72bffb37cde61d76ec31c5381e813e316/rts/Lua/LuaArchive.cpp#L63-L66" target="_blank">source</a>]
---
---@return string[] gameNames
function VFS.GetGames() end

---[<a href="https://github.com/beyond-all-reason/spring/blob/0b74f9f72bffb37cde61d76ec31c5381e813e316/rts/Lua/LuaArchive.cpp#L82-L85" target="_blank">source</a>]
---
---@return string[] archiveNames
function VFS.GetAllArchives() end

---[<a href="https://github.com/beyond-all-reason/spring/blob/0b74f9f72bffb37cde61d76ec31c5381e813e316/rts/Lua/LuaArchive.cpp#L101-L104" target="_blank">source</a>]
---
---@return boolean hasArchive
function VFS.HasArchive() end

---[<a href="https://github.com/beyond-all-reason/spring/blob/0b74f9f72bffb37cde61d76ec31c5381e813e316/rts/Lua/LuaArchive.cpp#L115-L118" target="_blank">source</a>]
---
---@return string[] archiveNames
function VFS.GetLoadedArchives() end

---[<a href="https://github.com/beyond-all-reason/spring/blob/0b74f9f72bffb37cde61d76ec31c5381e813e316/rts/Lua/LuaArchive.cpp#L129-L133" target="_blank">source</a>]
---
---@param archiveName string
---@return string? archivePath
function VFS.GetArchivePath(archiveName) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/0b74f9f72bffb37cde61d76ec31c5381e813e316/rts/Lua/LuaArchive.cpp#L148-L154" target="_blank">source</a>]
---
---@alias ModType
---| 0 # Hidden
---| 1 # Primary
---| 3 # Map
---| 4 # Base

---[<a href="https://github.com/beyond-all-reason/spring/blob/0b74f9f72bffb37cde61d76ec31c5381e813e316/rts/Lua/LuaArchive.cpp#L156-L167" target="_blank">source</a>]
---
---@class ArchiveInfo
---@field name string
---@field shortname string
---@field version string
---@field mutator string
---@field game string
---@field shortgame string
---@field description string
---@field mapfile string
---@field modtype ModType
local ArchiveInfo = {}

---[<a href="https://github.com/beyond-all-reason/spring/blob/0b74f9f72bffb37cde61d76ec31c5381e813e316/rts/Lua/LuaArchive.cpp#L169-L173" target="_blank">source</a>]
---
---@param archiveName string
---@return ArchiveInfo? archiveInfo
function VFS.GetArchiveInfo(archiveName) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/0b74f9f72bffb37cde61d76ec31c5381e813e316/rts/Lua/LuaArchive.cpp#L214-L218" target="_blank">source</a>]
---
---@param archiveName string
---@return string[] archiveNames
function VFS.GetArchiveDependencies(archiveName) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/0b74f9f72bffb37cde61d76ec31c5381e813e316/rts/Lua/LuaArchive.cpp#L232-L236" target="_blank">source</a>]
---
---@param archiveName string
---@return string[] archiveNames
function VFS.GetArchiveReplaces(archiveName) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/0b74f9f72bffb37cde61d76ec31c5381e813e316/rts/Lua/LuaArchive.cpp#L254-L259" target="_blank">source</a>]
---
---@param archiveName string
---@return string singleArchiveChecksum
---@return string completeArchiveChecksum
function VFS.GetArchiveChecksum(archiveName) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/0b74f9f72bffb37cde61d76ec31c5381e813e316/rts/Lua/LuaArchive.cpp#L279-L283" target="_blank">source</a>]
---
---@param rapidTag string
---@return string archiveName
function VFS.GetNameFromRapidTag(rapidTag) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/0b74f9f72bffb37cde61d76ec31c5381e813e316/rts/Lua/LuaArchive.cpp#L299-L303" target="_blank">source</a>]
---
---@class AIInfo
---@field shortName string
---@field version string
local AIInfo = {}

---Gets a list of all Spring AIs. The optional gameName and mapName parameters
---can be used to include game/map specific LuaAIs in the list.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/0b74f9f72bffb37cde61d76ec31c5381e813e316/rts/Lua/LuaArchive.cpp#L305-L313" target="_blank">source</a>]
---
---@param gameArchiveName string?
---@param mapArichiveName string?
---@return AIInfo[] ais
function VFS.GetAvailableAIs(gameArchiveName, mapArichiveName) end