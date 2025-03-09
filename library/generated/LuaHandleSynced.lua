---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 1.1.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaHandleSynced.cpp
---
---@meta

---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L165-L168" target="_blank">source</a>]
---
---@class UnsyncedCallins
---Functions called by the Engine (Unsynced).
local UnsyncedCallins = {}

---Misc
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L170-L174" target="_blank">source</a>]
---
---@section misc

---Receives data sent via `SendToUnsynced` callout.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L176-L182" target="_blank">source</a>]
---
---@param arg1 any
---@param arg2 any
---@param argn any
function UnsyncedCallins:RecvFromSynced(arg1, arg2, argn) end

---Custom Object Rendering
---
---For the following calls drawMode can be one of the following, notDrawing = 0, normalDraw = 1, shadowDraw = 2, reflectionDraw = 3, refractionDraw = 4, and finally gameDeferredDraw = 5 which was added in 102.0.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L202-L207" target="_blank">source</a>]
---
---@section custom_object

---For custom rendering of units
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L209-L215" target="_blank">source</a>]
---
---@param unitID integer
---@param drawMode number
---@return boolean suppressEngineDraw
function UnsyncedCallins:DrawUnit(unitID, drawMode) end

---For custom rendering of features
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L245-L251" target="_blank">source</a>]
---
---@param featureID integer
---@param drawMode number
---@return boolean suppressEngineDraw
function UnsyncedCallins:DrawFeature(featureID, drawMode) end

---For custom rendering of shields.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L280-L287" target="_blank">source</a>]
---
---@param featureID integer
---@param weaponID integer
---@param drawMode number
---@return boolean suppressEngineDraw
function UnsyncedCallins:DrawShield(featureID, weaponID, drawMode) end

---For custom rendering of weapon (& other) projectiles
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L318-L324" target="_blank">source</a>]
---
---@param projectileID integer
---@param drawMode number
---@return boolean suppressEngineDraw
function UnsyncedCallins:DrawProjectile(projectileID, drawMode) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L355-L361" target="_blank">source</a>]
---
---@param uuid number
---@param drawMode number
---@return boolean suppressEngineDraw
function UnsyncedCallins:DrawMaterial(uuid, drawMode) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L547-L550" target="_blank">source</a>]
---
---@class SyncedCallins
---Functions called by the Engine (Synced).
local SyncedCallins = {}

---Called when the unit reaches an unknown command in its queue (i.e. one not handled by the engine).
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L568-L579" target="_blank">source</a>]
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param cmdID integer
---@param cmdParams number[]
---@param cmdOptions CommandOptions
---@param cmdTag number
---@return boolean whether to remove the command from the queue
function SyncedCallins:CommandFallback(unitID, unitDefID, unitTeam, cmdID, cmdParams, cmdOptions, cmdTag) end

---Called when the command is given, before the unit's queue is altered.
---
---The queue remains untouched when a command is blocked, whether it would be queued or replace the queue.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L601-L617" target="_blank">source</a>]
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param cmdID integer
---@param cmdParams number[]
---@param cmdOptions CommandOptions
---@param cmdTag number
---@param synced boolean
---@param fromLua boolean
---@return boolean whether it should be let into the queue.
function SyncedCallins:AllowCommand(unitID, unitDefID, unitTeam, cmdID, cmdParams, cmdOptions, cmdTag, synced, fromLua) end

---Called just before unit is created.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L645-L656" target="_blank">source</a>]
---
---@param unitDefID integer
---@param builderID integer
---@param builderTeam integer
---@param x number
---@param y number
---@param z number
---@param facing number
---@return boolean allow, boolean dropOrder
function SyncedCallins:AllowUnitCreation(unitDefID, builderID, builderTeam, x, y, z, facing) end

---Called just before a unit is transferred to a different team.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L692-L701" target="_blank">source</a>]
---
---@param unitID integer
---@param unitDefID integer
---@param oldTeam integer
---@param newTeam integer
---@param capture boolean
---@return boolean whether or not the transfer is permitted.
function SyncedCallins:AllowUnitTransfer(unitID, unitDefID, oldTeam, newTeam, capture) end

---Called just before a unit progresses its build percentage.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L729-L738" target="_blank">source</a>]
---
---@param builderID integer
---@param builderTeam integer
---@param unitID integer
---@param unitDefID integer
---@param part number
---@return boolean whether or not the build makes progress.
function SyncedCallins:AllowUnitBuildStep(builderID, builderTeam, unitID, unitDefID, part) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L766-L775" target="_blank">source</a>]
---
---@param builderID integer
---@param builderTeam integer
---@param unitID integer
---@param unitDefID integer
---@param part number
---@return boolean whether or not the capture makes progress.
function SyncedCallins:AllowUnitCaptureStep(builderID, builderTeam, unitID, unitDefID, part) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L803-L813" target="_blank">source</a>]
---
---@param transporterID integer
---@param transporterUnitDefID integer
---@param transporterTeam integer
---@param transporteeID integer
---@param transporteeUnitDefID integer
---@param transporteeTeam integer
---@return boolean whether or not the transport is allowed
function SyncedCallins:AllowUnitTransport(transporterID, transporterUnitDefID, transporterTeam, transporteeID, transporteeUnitDefID, transporteeTeam) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L841-L854" target="_blank">source</a>]
---
---@param transporterID integer
---@param transporterUnitDefID integer
---@param transporterTeam integer
---@param transporteeID integer
---@param transporteeUnitDefID integer
---@param transporteeTeam integer
---@param x number
---@param y number
---@param z number
---@return boolean whether or not the transport load is allowed
function SyncedCallins:AllowUnitTransportLoad(transporterID, transporterUnitDefID, transporterTeam, transporteeID, transporteeUnitDefID, transporteeTeam, x, y, z) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L891-L904" target="_blank">source</a>]
---
---@param transporterID integer
---@param transporterUnitDefID integer
---@param transporterTeam integer
---@param transporteeID integer
---@param transporteeUnitDefID integer
---@param transporteeTeam integer
---@param x number
---@param y number
---@param z number
---@return boolean whether or not the transport unload is allowed
function SyncedCallins:AllowUnitTransportUnload(transporterID, transporterUnitDefID, transporterTeam, transporteeID, transporteeUnitDefID, transporteeTeam, x, y, z) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L939-L945" target="_blank">source</a>]
---
---@param unitID integer
---@param enemyID integer?
---@return boolean whether unit is allowed to cloak
function SyncedCallins:AllowUnitCloak(unitID, enemyID) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L975-L982" target="_blank">source</a>]
---
---@param unitID integer
---@param objectID integer?
---@param weaponNum number?
---@return boolean whether unit is allowed to decloak
function SyncedCallins:AllowUnitCloak(unitID, objectID, weaponNum) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1019-L1025" target="_blank">source</a>]
---
---@param unitID integer
---@param targetID integer
---@return boolean whether unit is allowed to selfd
function SyncedCallins:AllowUnitKamikaze(unitID, targetID) end

---Called just before feature is created.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1049-L1058" target="_blank">source</a>]
---
---@param featureDefID integer
---@param teamID integer
---@param x number
---@param y number
---@param z number
---@return boolean whether or not the creation is permitted
function SyncedCallins:AllowFeatureCreation(featureDefID, teamID, x, y, z) end

---Called just before a feature changes its build percentage.
---
---Note that this is also called for resurrecting features, and for refilling features with resources before resurrection.
---On reclaim the part values are negative, and on refill and resurrect they are positive.
---Part is the percentage the feature be built or reclaimed per frame.
---Eg. for a 30 workertime builder, that's a build power of 1 per frame.
---For a 50 buildtime feature reclaimed by this builder, part will be 100/-50(/1) = -2%, or -0.02 numerically.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1086-L1103" target="_blank">source</a>]
---
---@param builderID integer
---@param builderTeam integer
---@param featureID integer
---@param featureDefID integer
---@param part number
---
---@return boolean whether or not the change is permitted
function SyncedCallins:AllowFeatureBuildStep(builderID, builderTeam, featureID, featureDefID, part) end

---Called when a team sets the sharing level of a resource.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1131-L1138" target="_blank">source</a>]
---
---@param teamID integer
---@param res string
---@param level number
---@return boolean whether or not the sharing level is permitted
function SyncedCallins:AllowResourceLevel(teamID, res, level) end

---Called just before resources are transferred between players.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1164-L1172" target="_blank">source</a>]
---
---@param oldTeamID integer
---@param newTeamID integer
---@param res string
---@param amount number
---@return boolean whether or not the transfer is permitted.
function SyncedCallins:AllowResourceTransfer(oldTeamID, newTeamID, res, amount) end

---Determines if this unit can be controlled directly in FPS view.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1199-L1207" target="_blank">source</a>]
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param playerID integer
---@return boolean allow
function SyncedCallins:AllowDirectUnitControl(unitID, unitDefID, unitTeam, playerID) end

---Called when a construction unit wants to "use his nano beams".
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1234-L1250" target="_blank">source</a>]
---
---@param unitID integer
---@param unitDefID integer
---@param action number one of following:
---
---  -1 Build
---  CMD.REPAIR Repair
---  CMD.RECLAIM Reclaim
---  CMD.RESTORE Restore
---  CMD.RESURRECT Resurrect
---  CMD.CAPTURE Capture
---
---@return boolean actionAllowed
function SyncedCallins:AllowBuilderHoldFire(unitID, unitDefID, action) end

---Whether a start position should be allowed
---
---clamped{X,Y,Z} are the coordinates clamped into start-boxes, raw is where player tried to place their marker.
---
---The readyState can be any one of:
---
---    0 - player picked a position,
---    1 - player clicked ready,
---    2 - player pressed ready OR the game was force-started (player did not click ready, but is now forcibly readied) or
---    3 - the player failed to load.
---    The default 'failed to choose' start-position is the north-west point of their startbox, or (0,0,0) if they do not have a startbox.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1276-L1301" target="_blank">source</a>]
---
---@param playerID integer
---@param teamID integer
---@param readyState number
---@param clampedX number
---@param clampedY number
---@param clampedZ number
---@param rawX number
---@param rawY number
---@param rawZ number
---
---@return boolean allow
function SyncedCallins:AllowStartPosition(playerID, teamID, readyState, clampedX, clampedY, clampedZ, rawX, rawY, rawZ) end

---Enable both Spring.MoveCtrl.SetCollideStop and Spring.MoveCtrl.SetTrackGround to enable this call-in.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1334-L1344" target="_blank">source</a>]
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param data number was supposed to indicate the type of notification but currently never has a value other than 1 ("unit hit the ground").
---
---@return boolean whether or not the unit should remain script-controlled (false) or return to engine controlled movement (true).
function SyncedCallins:MoveCtrlNotify(unitID, unitDefID, unitTeam, data) end

---Called when pre-building terrain levelling terraforms are completed (c.f. levelGround)
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1372-L1382" target="_blank">source</a>]
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param buildUnitID integer
---@param buildUnitDefID integer
---@param buildUnitTeam integer
---@return boolean if true the current build order is terminated
function SyncedCallins:TerraformComplete(unitID, unitDefID, unitTeam, buildUnitID, buildUnitDefID, buildUnitTeam) end

---Damage Controllers
---
---For the following callins, in addition to being a regular weapon, weaponDefID may be one of the following:
---
---    -1 - debris collision, also default of Spring.AddUnitDamage
---    -2 - ground collision
---    -3 - object collision
---    -4 - fire damage
---    -5 - water damage
---    -6 - kill damage
---    -7 - crush damage
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1416-L1428" target="_blank">source</a>]

---Called before damage is applied to the unit, allows fine control over how much damage and impulse is applied.
---
---Called after every damage modification (even `HitByWeaponId`) but before the damage is applied
---
---expects two numbers returned by lua code:
---1st is stored under *newDamage if newDamage != NULL
---2nd is stored under *impulseMult if impulseMult != NULL
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1430-L1452" target="_blank">source</a>]
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param damage number
---@param paralyzer boolean
---@param weaponDefID integer? Synced Only
---@param projectileID integer? Synced Only
---@param attackerID integer? Synced Only
---@param attackerDefID integer? Synced Only
---@param attackerTeam integer? Synced Only
---
---@return number newDamage, number impulseMult
function SyncedCallins:UnitPreDamaged(unitID, unitDefID, unitTeam, damage, paralyzer, weaponDefID, projectileID, attackerID, attackerDefID, attackerTeam) end

---Called before damage is applied to the feature.
---
---Allows fine control over how much damage and impulse is applied.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1526-L1543" target="_blank">source</a>]
---
---@param featureID integer
---@param featureDefID integer
---@param featureTeam integer
---@param damage number
---@param weaponDefID integer
---@param projectileID integer
---@param attackerID integer
---@param attackerDefID integer
---@param attackerTeam integer
---@return number newDamage
---@return number impulseMult
function SyncedCallins:FeaturePreDamaged(featureID, featureDefID, featureTeam, damage, weaponDefID, projectileID, attackerID, attackerDefID, attackerTeam) end

---Called before any engine shield-vs-projectile logic executes.
---
---If the weapon is a hitscan type (BeamLaser or LightningCanon) then proID is nil and beamEmitterWeaponNum and beamEmitterUnitID are populated instead.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1609-L1630" target="_blank">source</a>]
---
---@param projectileID integer
---@param projectileOwnerID integer
---@param shieldWeaponNum integer
---@param shieldCarrierID integer
---@param bounceProjectile boolean
---@param beamEmitterWeaponNum integer
---@param beamEmitterUnitID integer
---@param startX number
---@param startY number
---@param startZ number
---@param hitX number
---@param hitY number
---@param hitZ number
---
---@return boolean if true the gadget handles the collision event and the engine does not remove the projectile
function SyncedCallins:ShieldPreDamaged(projectileID, projectileOwnerID, shieldWeaponNum, shieldCarrierID, bounceProjectile, beamEmitterWeaponNum, beamEmitterUnitID, startX, startY, startZ, hitX, hitY, hitZ) end

---Determines if this weapon can automatically generate targets itself. See also commandFire weaponDef tag.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1691-L1699" target="_blank">source</a>]
---
---@param attackerID integer
---@param attackerWeaponNum integer
---@param attackerWeaponDefID integer
---@return boolean allowCheck
---@return boolean ignoreCheck
function SyncedCallins:AllowWeaponTargetCheck(attackerID, attackerWeaponNum, attackerWeaponDefID) end

---Controls blocking of a specific target from being considered during a weapon's periodic auto-targeting sweep.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1731-L1741" target="_blank">source</a>]
---
---@param attackerID integer
---@param targetID integer
---@param attackerWeaponNum integer
---@param attackerWeaponDefID integer
---@param defPriority number
---@return boolean allowed
---@return number the new priority for this target (if you don't want to change it, return defPriority). Lower priority targets are targeted first.
function SyncedCallins:AllowWeaponTarget(attackerID, targetID, attackerWeaponNum, attackerWeaponDefID, defPriority) end

---Controls blocking of a specific intercept target from being considered during an interceptor weapon's periodic auto-targeting sweep.
---
---Only called for weaponDefIDs registered via Script.SetWatchWeapon.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fab2b206c49f4d3ad90a753e6be326ec88ae0ba6/rts/Lua/LuaHandleSynced.cpp#L1794-L1805" target="_blank">source</a>]
---
---@param interceptorUnitID integer
---@param interceptorWeaponID integer
---@param targetProjectileID integer
---
---@return boolean allowed
function SyncedCallins:AllowWeaponInterceptTarget(interceptorUnitID, interceptorWeaponID, targetProjectileID) end