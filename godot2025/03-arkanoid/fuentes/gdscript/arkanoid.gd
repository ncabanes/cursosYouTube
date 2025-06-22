extends Node2D

var niveles = [
	[
		"             ",
		"             ",
		"             ",
		"             ",
		"GGGGGGGGGGGGG",
		"5555555555555",
		"4444444444444",
		"3333333333333",
		"2222222222222",
		"1111111111111",
		"             ",
		"             ",
		"             ",
		"             ",
		"             ",
		"             ",
		"             ",
		"             "
	],
	[
		"             ",
		"             ",
		"6            ",
		"67           ",
		"678          ",
		"6781         ",
		"67815        ",
		"678153       ",
		"6781532      ",
		"67815324     ",
		"678153246    ",
		"6781532467   ",
		"67815324678  ",
		"678153246781 ",
		"GGGGGGGGGGGG5",
		"             ",
		"             ",
		"             "
	]
]

var nivelActual : int = 0
var ladrillosRestantes : int = 0
var anchoLadrillo : int = 32
var altoLadrillo : int = 16
var margenHorizontal : int = 32
var margenVertical : int = 56

var ladrillo1 : PackedScene
var escenaPelota : PackedScene
var escenaEnemigo : PackedScene
var temporizadorEnemigo = Timer.new()

func _ready() -> void:
	ladrillo1 = preload("res://ladrillo_1.tscn")
	generarNivel()
	escenaPelota = preload("res://pelota.tscn")
	escenaEnemigo = preload("res://enemigo.tscn")
	var pelota = escenaPelota.instantiate()
	pelota.position = Vector2(200, 300)
	pelota.linear_velocity = Vector2(100, -100)
	add_child(pelota)
	temporizadorEnemigo.wait_time = 5.0
	temporizadorEnemigo.one_shot = true
	temporizadorEnemigo.timeout.connect(generarEnemigo)
	add_child(temporizadorEnemigo)
	temporizadorEnemigo.start()

func generarNivel() -> void:
	ladrillosRestantes = 0	
	for y in range(niveles[nivelActual].size()):
		for x in range(niveles[nivelActual][y].length()):
			var caracter = niveles[nivelActual][y][x]
			var posicion = Vector2(x * anchoLadrillo + margenHorizontal,
				y * altoLadrillo + margenVertical)
			
			if caracter == "1":
				var l = ladrillo1.instantiate()
				l.add_to_group("Ladrillo")
				l.position = posicion
				add_child(l)
				ladrillosRestantes += 1
			elif caracter == "2":
				var l = ladrillo1.instantiate()
				l.add_to_group("Ladrillo")
				l.position = posicion
				add_child(l)
				l.get_node("Sprite2D").modulate = Color(1,0,0)
				ladrillosRestantes += 1

func generarEnemigo() -> void:
	var enemigo = escenaEnemigo.instantiate()
	enemigo.position = Vector2(randf_range(50, 400),
		randf_range(100, 200))
	add_child(enemigo)

func _physics_process(_delta: float) -> void:
	var entrada = Input.get_axis("ui_left", "ui_right")
	$Bate.linear_velocity = Vector2(400 * entrada, 0)
