extends Node2D

const SPEED = 60

var direction = 1

@onready var ray_castright: RayCast2D = $RayCastright
@onready var ray_castleft: RayCast2D = $RayCastleft


# Called when the node enters the scene tree for the first time.
func _process(_delta):
	if ray_castright.is_colliding():
		direction = -1.0 
	if ray_castleft.is_colliding():
		direction = 1.0
	$AnimatedSprite2D.flip_h = direction < 0
	position.x += direction *  SPEED * _delta
