extends CharacterBody2D

var speed = 400  # speed in pixels/sec

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	if direction != Vector2.ZERO:
		get_animation(1)
	else:
		get_animation(0)

	move_and_slide()


func get_animation(move):
	if move == 1:
		$AnimationPlayer.play('Run')
	else:
		$AnimationPlayer.play('Stand')


func _on_area_2d_body_entered(body):
	if body.is_in_group('Enemy'):
		get_tree().change_scene_to_file("res://level_2.tscn") # Replace with function body.
