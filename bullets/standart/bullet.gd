extends KinematicBody2D



var velocity = Vector2(0,0)
var damage = 100
var health = 1


func _ready():
	pass



func _process(delta):
	move_and_collide(velocity * delta)



func _on_Area2D_body_entered(body):
	print(body.test())
	if body.test() != "player":
		body.hit(damage)
		queue_free()

func hit(damag):
	pass
