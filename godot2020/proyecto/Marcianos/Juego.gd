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
		# Prepara el tiempo hasta el disparo
		tiempoTranscurridoDesdeDisparo = 0
		tiempoHastaSiguienteDisparo = tiempoMinPorDisparo + \
			randf() * (tiempoMaxPorDisparo - tiempoMinPorDisparo)
			
		# Buscamos la posición de un enemigo al azar
		var enemigoEncontrado = false
		var intento = 0
		while enemigoEncontrado == false and intento < 3:
			var numeroEnemigo = randi() % get_child_count()
			if get_child(numeroEnemigo).name.begins_with("Enemigo"):
				enemigoEncontrado = true
				var disparo = DISPARO.instance()
				disparo.position = get_child(numeroEnemigo).position + \
					Vector2(0,50)
				get_parent().add_child(disparo)
			intento += 1
		
		

func incrementarPuntos():
	puntos += 10
	#get_node("InterfazDeUsuario/VBoxContainer/LabelPuntos").text = "Puntos: " + str(puntos)
	$InterfazDeUsuario/VBoxContainer/LabelPuntos.text = "Puntos: " + str(puntos)
