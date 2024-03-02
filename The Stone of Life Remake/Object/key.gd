extends Area2D


# Called when the node enters the scene tree for the first time.


func _on_body_entered(body):
	$"../Gui"/Key.play()
	queue_free()
	Global.keycon =  Global.keycon + 1 # Replace with function body.
	$"../Gui"/CanvasLayer/ConKey.text = "Ключи:" + str(Global.keycon)
