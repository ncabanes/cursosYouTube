extends Node2D

var raquetaIzquierda: Area2D
var raquetaDerecha: Area2D
var pelota: Area2D

var puntosJugadorIzquierda : int = 0
var puntosJugadorDerecha : int = 0

var enPartida : bool = false

var cifras = [
	load("res://imagenes/0.png"),
	load("res://imagenes/1.png"),
	load("res://imagenes/2.png"),
	load("res://imagenes/3.png"),
	load("res://imagenes/4.png"),
	load("res://imagenes/5.png"),
	load("res://imagenes/6.png"),
	load("res://imagenes/7.png"),
	load("res://imagenes/8.png"),
	load("res://imagenes/9.png"),
]

func _ready() -> void:
	raquetaIzquierda = $RaquetaIzquierda
	raquetaDerecha = $RaquetaDerecha
	pelota = $Pelota
	terminarPartida()

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
			
	if not enPartida and Input.is_action_just_pressed("comenzar"):
		comenzarPartida()

func anotarPuntosEnIzquierda() -> void:
	puntosJugadorDerecha += 1
	pelota.position = Vector2(85, 125)
	#pelota.indicarVelocidad(100,-100)
	pelota.indicarVelocidad(
		100 + 4 * (puntosJugadorDerecha + puntosJugadorIzquierda),
		-100 - 4 * (puntosJugadorDerecha + puntosJugadorIzquierda))
	actualizarMarcador()

func anotarPuntosEnDerecha() -> void:
	puntosJugadorIzquierda += 1
	pelota.position = Vector2(372-85, 125)
	actualizarMarcador()
	#pelota.indicarVelocidad(-100,-100)
	pelota.indicarVelocidad(
		-100 - 4 * (puntosJugadorDerecha + puntosJugadorIzquierda),
		-100 - 4 * (puntosJugadorDerecha + puntosJugadorIzquierda))

func actualizarMarcador() -> void:
	#$TextoPuntos.text = "%02d  %02d" % [puntosJugadorIzquierda, puntosJugadorDerecha]
	$cifraIzquierda1.texture = cifras[ int(puntosJugadorIzquierda / 10)]
	$cifraIzquierda2.texture = cifras[ puntosJugadorIzquierda % 10]
	$cifraDerecha1.texture = cifras[ int(puntosJugadorDerecha / 10)]
	$cifraDerecha2.texture = cifras[ puntosJugadorDerecha % 10]
	
	if puntosJugadorDerecha >= 11 or puntosJugadorIzquierda >= 11:
		terminarPartida()

func comenzarPartida() -> void:
	$TextoComenzar.visible = false
	pelota.position = Vector2(85,125)
	pelota.indicarVelocidad(100,100)
	pelota.indicarVelocidad(100,100)
	puntosJugadorDerecha = 0
	puntosJugadorIzquierda = 0
	enPartida = true
	actualizarMarcador()

func terminarPartida() -> void:
	$TextoComenzar.visible = true
	pelota.indicarVelocidad(0,0)
	enPartida = false
