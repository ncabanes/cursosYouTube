extends Area2D

export var pixelesPorSegundo : int = 180

func _ready():
	pass 

func _process(delta):
	position.y -= pixelesPorSegundo * delta
	
	if position.y < 0:
		queue_free()

