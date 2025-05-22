#@tool, @icon, @static_unload
class_name RkGame
extends Node
## Main game interface for Rikki Kuu
##
## This is the general starting point for the game's API. This is a base class
## for a singleton that will be auto-loaded by the game. In this way the game
## can implement the details of an interface type that mods can see and interact
## with as intuitively as any other godot object.

# signals
# enums
# constants

#region static variables

## Returns the currently loaded implementation of [RkGame].
static var instance:RkGame:
	get:
		if instance == null:
			instance = Utility.scene_root.get_node("Game") as RkGame
		return instance

#endregion

# @export variables
# remaining regular variables
# @onready variables
# _static_init()

#region remaining static methods

#endregion

# _init()
# _enter_tree()
# _ready()
# _process()
# _physics_process()
# remaining virtual methods
# overridden custom methods

#region remaining methods

## Returns the running game version
func get_version() -> Array[int]:
	return []

#endregion

# subclasses
