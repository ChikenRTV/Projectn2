extends Area2D
@export var scene2  = 1
var scene4 = ["level_1","level_2"]


# Called when the node enters the scene tree for the first time. # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_body_entered(body):
	$Timer.start(2)
	$"../Gui"/CanvasLayer/Fade/AnimationPlayer.play('Out')# Replace with function body.


func _on_timer_timeout():
	var scene3 = "res://" + scene4[scene2] + ".tscn"
	var scene = load(scene3)
	get_tree().change_scene_to_packed(scene) # Replace with function body.
