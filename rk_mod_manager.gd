#@icon
class_name RkModManager
extends Node
## Manages mod loading & mod lists for Rikki Kuu
##
## Loaded mods need to be of type [RkMod], and will become child nodes of
## this instantiated class.
## 
## A valid mod needs to place all of its content inside of `res://mods/my_mod_shortname/`
## including its `mod.gd` file.

# signals
# enums
# constants

#region static variables

## Returns the currently loaded implementation of [RkModManager].
static var instance:RkModManager:
	get:
		if instance == null:
			instance = Utility.scene_root.get_node("ModManager") as RkModManager
		return instance

#endregion

# @export variables
# remaining regular variables
# @onready variables

# _static_init()
# remaining static methods
# _init()
# _enter_tree()
# _ready()
# _process()
# _physics_process()
# remaining virtual methods
# overridden custom methods

#region remaining methods

## After pck files containing mods have been loaded, call this function to
## search for and discover mods in the resource file system.
func discover_mods_in_loaded_packs() -> void:
	pass


## Returns the list of available mods that can be activated this session. This
## does not account for mods requiring other mods that haven't yet been
## discovered with [method discover_mods_in_loaded_packs].
## [br][br]
## See also [method validate_mod_list]
func get_discovered_mods() -> Array[String]:
	return []


## Returns an interface to the given mod shortname. Returns null if the mod has
## not yet been discovered.
func get_mod(mod_shortname:String) -> RkMod:
	return null


## Checks the mod list and returns any problems found. If no problems are reported,
## then the given mod list is safe to activate.
func validate_mod_list(mod_list:Array[String], check_order := true) -> Array[String]:
	return []


## Sort the given mod list according to dependencies of those mods, if possible.
## Returns false if the mod list contains missing or circular dependencies.
## [br][br]
## A variation of Kahns Algorithm is used to sort the list. A limited degree of
## stability exists in the sort.
func sort_mod_list(mod_list:Array[String]) -> bool:
	return false


## Returns the mod list that was most recently set by [method set_active_mods].
## These are the mods affecting the game right now, of all the discovered mods.
func get_active_mods() -> Array[String]:
	return []


## Set the active mod list. Returns true if the mod list was modified.
## [br][br]
## [param mod_list] must either be an empty array or a valid list of mods.
## See also [method validate_mod_list].
## [br][br]
## First all current mods are deactivated, then the new list of mods is activated.
## Passing an empty list will just clear the current active mods. Mods -
## specifically pck files' content - cannot be unloaded from memory once loaded.
func set_active_mods(mod_list:Array[String] = []) -> bool:
	return false


#endregion

# subclasses
