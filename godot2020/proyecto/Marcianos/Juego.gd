extends Node2D

const DISPARO = preload("res://DisparoDeEnemigo.tscn")

#var puntos = 0
var vidas = 3
var listaDisparos = []

var tiempoMinPorDisparo = 1.0
var tiempoMaxPorDisparo = 3.0

var tiempoHastaSiguienteDisparo = tiempoMaxPorDisparo
var tiempoTranscurridoDesdeDisparo = 0
var timer

func _init():
	timer = Timer.new()
	add_child(timer)
	timer.wait_time = prepararTemporizadorDeDisparo()
	timer.autostart = true
	timer.connect("timeout", self, "disparar")


func _ready():
	pass # Replace with function body.

func _process(delta):
	if Input.is_key_pressed(KEY_N):
		if get_tree().get_current_scene().name == "Nivel1":
			get_tree().change_scene("res://Nivel2.tscn")
		else:
			get_tree().change_scene("res://Nivel1.tscn")

func incrementarPuntos():
	Compartido.puntos += 10
	#get_node("InterfazDeUsuario/VBoxContainer/LabelPuntos").text = "Puntos: " + str(puntos)
	$InterfazDeUsuario/VBoxContainer/LabelPuntos.text = \
		"Puntos: " + str(Compartido.puntos)

func prepararTemporizadorDeDisparo():
	return tiempoMinPorDisparo + \
			randf() * (tiempoMaxPorDisparo - tiempoMinPorDisparo)

func disparar():
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
			listaDisparos.push_back(disparo)
		intento += 1
	
	timer.wait_time = prepararTemporizadorDeDisparo()

func perderVida():
	vidas -= 1
	$InterfazDeUsuario/VBoxContainer/LabelVidas.text = "Vidas: " + str(vidas)
	
	for i in listaDisparos.size():
		if listaDisparos[i] != null:
			listaDisparos[i].queue_free()
			listaDisparos.erase(i)
	
	if vidas <= 0:
		get_tree().change_scene("res://Bienvenida.tscn")
		
