#@icon
class_name RikkiKuuMod
extends Node
## Main mod interface for Rikki Kuu
##
## Every mod is required to have a `mod.gd` file in its res://mods/ folder that
## inherits from this class.
##
## Once loading order is determined, a mod becomes a child node of
## `/root/ModManager`. Mods are unloaded in reverse order. Modded content cannot
## be unloaded without restarting the game.

# signals
# enums
# constants
# static variables
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

## Internal name of this mod, must match its folder in res://mods/
func get_shortname() -> String:
	return ""


## Proper name of this mod
func get_longname() -> String:
	return ""


## Mods that must be available and loaded before this mod can load
##
## Generally the base mod is always required, except by the base mod itself
func get_required_mods() -> Array[String]:
	return ["base"]


## Mods that if available must be loaded before this mod can load
func get_optional_mods() -> Array[String]:
	return []

#endregion

# subclasses
