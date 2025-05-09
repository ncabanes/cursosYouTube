extends Node2D

var raquetaIzquierda: Area2D
var raquetaDerecha: Area2D
var pelota: Area2D

var puntosJugadorIzquierda : int = 0
var puntosJugadorDerecha : int = 0

func _ready() -> void:
	raquetaIzquierda = $RaquetaIzquierda
	raquetaDerecha = $RaquetaDerecha
	pelota = $Pelota

func _process(delta: float) -> void:
	if Input.is_action_pressed("arriba1"):
		if raquetaIzquierda.position.y > 30:
			raquetaIzquierda.position.y -= 100 * delta
	
	if Input.is_action_pressed("abajo1"):
		if raquetaIzquierda.position.y < 210:
			raquetaIzquierda.position.y += 100 * delta

	if Input.is_action_pressed("arriba2"):
		if raquetaDerecha.position.y > 30:
			raquetaDerecha.position.y -= 100 * delta
	
	if Input.is_action_pressed("abajo2"):
		if raquetaDerecha.position.y < 210:
			raquetaDerecha.position.y += 100 * delta

func anotarPuntosEnIzquierda() -> void:
	puntosJugadorDerecha += 1
	pelota.position = Vector2(85, 125)
	pelota.indicarVelocidad(100,-100)
	actualizarMarcador()

func anotarPuntosEnDerecha() -> void:
	puntosJugadorIzquierda += 1
	pelota.position = Vector2(372-85, 125)
	pelota.indicarVelocidad(-100,-100)
	actualizarMarcador()

func actualizarMarcador() -> void:
	$TextoPuntos.text = "%02d  %02d" % [puntosJugadorIzquierda, puntosJugadorDerecha]
