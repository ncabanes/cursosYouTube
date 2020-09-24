extends Area2D

const DISPARO = preload("res://Disparo.tscn")

export var pixelesPorSegundo : int = 180
var tiempoHastaDisparo = 2.0
var tiempoPorCadaDisparo = 2.0

func _ready():
	connect("area_entered", self, "recibirDisparo")

func _process(delta):
	tiempoHastaDisparo += delta
	
	if Input.is_action_pressed("ui_right"):
		position.x += pixelesPorSegundo * delta
	if Input.is_action_pressed("ui_left"):
		position.x -= pixelesPorSegundo * delta
		
	if Input.is_key_pressed(KEY_SPACE):
		disparar()

func disparar():
	if tiempoHastaDisparo >= tiempoPorCadaDisparo:
		tiempoHastaDisparo = 0
		var disparo = DISPARO.instance()
		disparo.position = position - Vector2(0, 40)
		get_parent().add_child(disparo)

func recibirDisparo(object):
	object.queue_free()
	get_tree().change_scene("res://Bienvenida.tscn")
