extends CharacterBody2D
@export var Dir = 1
@export var Speed = 0.2

# Called when the node enters the scene tree for the first time. # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$AnimationPlayer.play("Walk")
	$"..".progress_ratio += delta * Speed
	#velocity.x += Dir * Speed
	
	#move_and_slide()


func _on_area_2d_body_entered(body):
	if body.is_in_group('Block'):
		if Dir == 1:
			scale.x = -0.654
			Dir = -1
		else:
			scale.x = 0.654
			Dir = 1 # Replace with function body.
