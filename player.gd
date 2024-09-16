extends CharacterBody2D

func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	var mouse_position = get_global_mouse_position()
	var pressed = Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT)
	velocity = direction * 500
	move_and_slide()
	if velocity.length() > 0:
		%HappyBoo.play_walk_animation()
	# Get the global mouse position
	if pressed:
		direction = mouse_position
		velocity = direction * 2
		move_and_slide()
	else:
		%HappyBoo.play_idle_animation()

		

