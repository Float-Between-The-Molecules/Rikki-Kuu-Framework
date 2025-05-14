#@icon
class_name RikkiKuuMod
extends RefCounted
## Main mod interface for Rikki Kuu
##
## @experimental

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

## the internal name of this mod, must match its folder in res://mods/
func get_shortname() -> String:
	return ""


## the proper name of this mod
func get_longname() -> String:
	return ""


## mods that must be available and loaded before this mod can load
func get_required_mods() -> Array[String]:
	return []


## mods that if available must be loaded before this mod can load
func get_optional_mods() -> Array[String]:
	return []

#endregion

# subclasses
