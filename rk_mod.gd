#@icon
class_name RkMod
extends Node
## Main mod interface for Rikki Kuu
##
## Every mod is required to have a `mod.gd` file in its res://mods/ folder that
## inherits from this class.
## [br][br]
## As long as mods meet their required & optional mods sorting, any loading order
## is allowed.
## [br][br]
## When mods are loaded into the game, a derived instance of this class is
## created to represent and interact with the given mod. Mods are attached /
## detached to the mod manager instance to represent their load / unload events.
## [br][br]
## The resources for a mod pack cannot be unloaded without restarting the game.

# signals
# enums
# constants
# static variables
# @export variables
# remaining regular variables
# @onready variables

# _static_init()

#region remaining static methods

## Intended for [method Array.map] to convert a [RkMod] array into an array of shortnames.
static func map_shortname(rkm:RkMod) -> String:
	return rkm.get_shortname()

#endregion

# _init()

func _enter_tree() -> void:
	print("mod activating")

# _ready()
# _process()
# _physics_process()

#region remaining virtual methods

func _exit_tree() -> void:
	print("mod deactivating")

#endregion

# overridden custom methods

#region remaining methods

## Internal name of this mod, must match its folder in res://mods/
func get_shortname() -> String:
	return ""


## Proper name of this mod
func get_longname() -> String:
	return ""


## Mods that must be available and loaded before this mod can load
## [br][br]
## Generally the base mod is always required, except by the base mod itself
func get_required_mods() -> Array[String]:
	return ["base"]


## Mods that if available must be loaded before this mod can load
func get_optional_mods() -> Array[String]:
	return []


## Returns concatenation of required and optional mods
func get_base_mods() -> Array[String]:
	return get_required_mods() + get_optional_mods()

#endregion

# subclasses
