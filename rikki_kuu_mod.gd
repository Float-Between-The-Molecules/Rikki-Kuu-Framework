class_name RikkiKuuMod
extends RefCounted
## Main mod interface for Rikki Kuu


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
