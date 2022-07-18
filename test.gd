extends Node2D

const skeleton_scene = preload("res://monsters/skeleton/skeleton.tscn")
const mouse_scene = preload("res://monsters/mouse/mouse.tscn")

var preload_exp = preload("res://exp/exp.tscn")


func _ready():
	randomize()


func _on__on_MobTimer_timeout_timeout():
	var random = round(rand_range(0,2))
	
	if random == 0:
		spawn_mouse()
	elif random == 1:
		spawn_skeleton()
	

func spawn_expi(_position):
	var expi = preload_exp.instance()
	add_child(expi)
	expi.position = _position
	
func spawn_mouse():
	var mob = mouse_scene.instance()
	add_child(mob)

	var mob_spawn_location = get_node("SpawnPath/SpawnLocation")
	mob_spawn_location.unit_offset = randf()
	mob.position = mob_spawn_location.position

func spawn_skeleton():
	var mob = skeleton_scene.instance()
	add_child(mob)

	var mob_spawn_location = get_node("SpawnPath/SpawnLocation")
	mob_spawn_location.unit_offset = randf()
	mob.position = mob_spawn_location.position
