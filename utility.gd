#@tool, @icon, @static_unload
class_name Utility
extends RefCounted
## Static class containing generic, utility and convenience functions


# signals
# enums
# constants

#region static variables

## Convenience property that gives direct Node-free access to the scene tree.
static var scene_tree:SceneTree:
	get:
		if scene_tree == null:
			# if we're looking for the tree, it's a safe bet it's the main loop
			scene_tree = Engine.get_main_loop() as SceneTree
		return scene_tree


## Convenience property that gives direct Node-free access to the root node.
static var scene_root:Window:
	get:
		if scene_root == null:
			scene_root = scene_tree.root
		return scene_root

#endregion

# @export variables
# remaining regular variables
# @onready variables

# _static_init()

#region remaining static methods

## Convenience method to locate the scene tree without the use of Node
## [br][br]
## It's a safe bet that if we're looking for the scene tree at all, it's going
## to be the case that the main loop is the scene tree, so we just cast as such.
## [br][br]
## It shouldn't be necessary to call this, refer to [member scene_tree].
## [br][br]
## @deprecated
static func find_scene_tree() -> SceneTree:
	var st := Engine.get_main_loop() as SceneTree
	assert(st != null)
	return st

#endregion

# _init()
# _enter_tree()
# _ready()
# _process()
# _physics_process()
# remaining virtual methods
# overridden custom methods
# remaining methods
# subclasses
