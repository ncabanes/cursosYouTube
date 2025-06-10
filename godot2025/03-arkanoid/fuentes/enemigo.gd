extends Area2D

var velocidadX : int = 10
var velocidadY : int = 1

func _process(delta: float) -> void:
	position += Vector2(velocidadX * delta, velocidadY * delta)
	
	if randi() % 1000 > 990:
		velocidadX = - velocidadX
	if randi() % 1000 > 990:
		velocidadY = - velocidadY
	
	# Forma artesanal de limitar movimiento
	if position.x > 400:
		position.x = 400
	elif position.x < 50:
		position.x = 50
	
	# Forma abreviada de limitar movimiento
	position.y = clampf(position.y, 50, 100)
	
