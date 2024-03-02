extends Area2D


var open = false
@export var Closer = true


# Called when the node enters the scene tree for the first time.
func _ready():
	var anim = $AnimationPlayer
	anim.play('Close')
	if Closer == false:
		$StaticBody2D/CollisionShape2D.queue_free()# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	var anim = $AnimationPlayer
	if open == false and Closer == false:
		anim.play('Open')
		open = true
	if open == false and Closer == true:
		anim.play('Open')
		open = true
		$StaticBody2D/CollisionShape2D.queue_free()
		Global.keycon =  Global.keycon - 1 # Replace with function body.
		$"../Gui"/CanvasLayer/ConKey.text = "Ключи:" + str(Global.keycon)
 # Replace with function body.
