extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var vy = 4
	var y = 0
	

func _process(delta):
	print("aaaa")
	pass

func hit(damage):
	queue_free()
	
func test():
	return 200
