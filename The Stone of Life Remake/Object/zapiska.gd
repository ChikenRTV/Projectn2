extends Area2D
@export var VoiceText = 0
var TextPropery = ['По легенде в этой местности существует камень, который даёт бессмертие. Хочешь испытать себя? Входи Но обратно дороги нет.','Поспешишь — жизнь оскорбишь','Чтобы стрелять из лука, нажми[ENTER]']

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass





func _on_body_entered(body):
	var gettexter = ''
	if VoiceText == 0:
		$"../Gui"/CanvasLayer/Label.text = TextPropery[0]
		$Voice.stream = load("res://Voice.mp3")
		$Voice.play()
		$CollisionShape2D.queue_free()
	if VoiceText == 1:
		gettexter = TextPropery[0]
		$"../Gui"/CanvasLayer/Label.text = TextPropery[1]
		$Voice.stream = load("res://Voice2.mp3")
		$Voice.play()
		$CollisionShape2D.queue_free()
	if VoiceText == 2:
		gettexter = TextPropery[0]
		$"../Gui"/CanvasLayer/Label.text = TextPropery[2]
		$Voice.stream = load("res://Voice3.mp3")
		$Voice.play()
		$CollisionShape2D.queue_free() # Replace with function body.
