extends Node2D

const skeleton_scene = preload("res://monsters/skeleton/skeleton.tscn")
const mouse_scene = preload("res://monsters/mouse/mouse.tscn")

var preload_exp = preload("res://exp/exp.tscn")

var mobs = [skeleton_scene,mouse_scene]
var mob = skeleton_scene

func _ready():
	randomize()


func _on__on_MobTimer_timeout_timeout():
	
	var mob_ = round(rand_range(0,1))
	
	#if mob_ == 1:
	#	mob = skeleton_scene.instance()
	#if mob_ == 2:
	
	mob = mouse_scene.instance()
	
	add_child(mob)
	
	var mob_spawn_location = get_node("SpawnPath/SpawnLocation")
	
	mob_spawn_location.unit_offset = randf()
	mob.position = mob_spawn_location.position
	

func spawn_expi(_position):
	var expi = preload_exp.instance()
	add_child(expi)
	expi.position = _position
	
