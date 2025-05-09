extends Area2D

var incrX : int = 75
var incrY : int = 75
var juego: Node2D

func _ready() -> void:
	juego = get_parent()

func _process(delta: float) -> void:
	position.x += incrX * delta
	position.y += incrY * delta

func _on_area_entered(otro: Area2D) -> void:
	print("Colisión")
	
	if otro.name == "MargenSuperior" or otro.name == "MargenInferior":
		incrY = -incrY

	if otro.name == "RaquetaIzquierda" or otro.name == "RaquetaDerecha":
		incrX = -incrX
	
	if otro.name == "PuntoIzquierda":
		juego.anotarPuntosEnIzquierda()
	
	if otro.name == "PuntoDerecha":
		juego.anotarPuntosEnDerecha()

func indicarVelocidad(vx: int, vy: int) -> void:
	incrX = vx
	incrY = vy
