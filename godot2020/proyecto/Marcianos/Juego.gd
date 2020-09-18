extends Node2D

const DISPARO = preload("res://DisparoDeEnemigo.tscn")

var puntos = 0

var tiempoMinPorDisparo = 1.0
var tiempoMaxPorDisparo = 3.0

var tiempoHastaSiguienteDisparo = tiempoMaxPorDisparo
var tiempoTranscurridoDesdeDisparo = 0


func _ready():
	pass # Replace with function body.

func _process(delta):
	tiempoTranscurridoDesdeDisparo += delta
	if (tiempoTranscurridoDesdeDisparo >= tiempoHastaSiguienteDisparo):
		tiempoTranscurridoDesdeDisparo = 0
		tiempoHastaSiguienteDisparo = tiempoMinPorDisparo + \
			randf() * (tiempoMaxPorDisparo - tiempoMinPorDisparo)
		#print("Pium")
		var disparo = DISPARO.instance()
		disparo.position = Vector2(500, 100)
		get_parent().add_child(disparo)

func incrementarPuntos():
	puntos += 10
	#get_node("InterfazDeUsuario/VBoxContainer/LabelPuntos").text = "Puntos: " + str(puntos)
	$InterfazDeUsuario/VBoxContainer/LabelPuntos.text = "Puntos: " + str(puntos)
