extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/Fade/AnimationPlayer.play("In")
	$CanvasLayer/ConKey.text = "Ключи:" + str(Global.keycon) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.keycon <= 0:
		$CanvasLayer/ConKey.visible = false
	else:
		$CanvasLayer/ConKey.visible = true




