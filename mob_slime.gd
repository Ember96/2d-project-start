extends CharacterBody2D

@onready var player = get_node("/root/ShootEmUp/Player")

func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 300.0
	move_and_slide()
