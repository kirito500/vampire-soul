extends Node2D

const skeleton_scene = preload("res://monsters/skeleton/skeleton.tscn")


func _ready():
	randomize()


func _on__on_MobTimer_timeout_timeout():
	var mob = skeleton_scene.instance()
	add_child(mob)

	var mob_spawn_location = get_node("SpawnPath/SpawnLocation")
	mob_spawn_location.unit_offset = randf()
	mob.position = mob_spawn_location.position
	

