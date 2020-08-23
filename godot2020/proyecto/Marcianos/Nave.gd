extends Area2D

export var pixelesPorSegundo : int = 180

func _ready():
	pass

func _process(delta):
	if Input.is_action_pressed("ui_right"):
		position.x += pixelesPorSegundo * delta
	if Input.is_action_pressed("ui_left"):
		position.x -= pixelesPorSegundo * delta
