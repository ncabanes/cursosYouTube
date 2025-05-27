extends Node2D

var velocidad: Vector2
var niveles = [
	[
		"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"X                      X     X",
		"X     X                X     X",
		"X   XXX    F     X     X     X",
		"X                X           X",
		"X                X    F      X",
		"X       X        X           X",
		"X   F   X            XXX     X",
		"X       X                    X",
		"X     X                X     X",
		"X   XXX    F     X     X     X",
		"X                X           X",
		"X                X    F      X",
		"X       X        X           X",
		"X   F   X            XXX     X",
		"X       X                    X",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
	],
	[
		"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"X   F                  XF    X",
		"X     X                X     X",
		"X   XXX    F     X     X     X",
		"X                X           X",
		"X                X    F      X",
		"X       X        X           X",
		"X       X            XXX     X",
		"X       X                    X",
		"X     X                XF    X",
		"X   XXX    F     X     X    FX",
		"X                X           X",
		"X                X    F      X",
		"X       X        X           X",
		"X   F   X            XXX     X",
		"XF      X                   FX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
	]
]

var tamanyoCasilla : int = 32
var segEspera : float = 0.400
var tiempoAcumulado : float = 0.0
var colaSerpiente = []
var casillaPared : PackedScene
var casillaFruta : PackedScene
var segmentoSerpiente : PackedScene
var nivelActual : int = 0
var frutasRestantes : int = 0
var enPartida : bool = false
var puntos: int = 0

func _ready() -> void:
	velocidad = Vector2(tamanyoCasilla,0)
	$Serpiente.position = Vector2(10*tamanyoCasilla + tamanyoCasilla/2.0, 
		7*tamanyoCasilla + tamanyoCasilla/2.0)
	segmentoSerpiente = preload("res://serpiente.tscn")
	casillaPared = preload("res://pared.tscn")
	casillaFruta = preload("res://fruta.tscn")
	generarLaberinto()
	terminarPartida()

func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_up") and enPartida:
		velocidad = Vector2(0, -tamanyoCasilla)
	if Input.is_action_pressed("ui_down") and enPartida:
		velocidad = Vector2(0, tamanyoCasilla)
	if Input.is_action_pressed("ui_left") and enPartida:
		velocidad = Vector2(-tamanyoCasilla, 0)
	if Input.is_action_pressed("ui_right") and enPartida:
		velocidad = Vector2(tamanyoCasilla, 0)

	if not enPartida and Input.is_action_just_pressed("comenzar"):
		comenzarPartida()

	tiempoAcumulado += delta
	if (tiempoAcumulado >= segEspera):
		moverSerpiente()
		tiempoAcumulado = 0

func generarLaberinto() -> void:
	frutasRestantes = 0	
	for y in range(niveles[nivelActual].size()):
		for x in range(niveles[nivelActual][y].length()):
			var caracter = niveles[nivelActual][y][x]
			var posicion = Vector2(x,y) * tamanyoCasilla + \
				Vector2(tamanyoCasilla/2.0, tamanyoCasilla/2.0)
			
			if caracter == "X":
				var pared = casillaPared.instantiate()
				pared.add_to_group("Pared")
				pared.position = posicion
				add_child(pared)
			elif caracter == "F":
				var fruta = casillaFruta.instantiate()
				fruta.add_to_group("Fruta")
				fruta.position = posicion
				add_child(fruta)
				frutasRestantes += 1

func _on_serpiente_area_entered(otro: Area2D) -> void:
	if otro.is_in_group("Pared") or otro.is_in_group("Serpiente"):
		$sonidoPared.play()
		terminarPartida()
	elif otro.is_in_group("Fruta"):
		call_deferred("aumentarSerpiente")
		$sonidoFruta.play()
		if segEspera > 0.060 :
			segEspera -= 0.030
		otro.queue_free()
		puntos += 1
		$textoPuntos.text = str(puntos)
		frutasRestantes -= 1
		if frutasRestantes == 0:
			avanzarNivel()

func aumentarSerpiente() -> void:
	var nuevoSegmento = segmentoSerpiente.instantiate()
	nuevoSegmento.add_to_group("Serpiente")
	nuevoSegmento.position = Vector2(-100, -100)
	colaSerpiente.append(nuevoSegmento)
	add_child(nuevoSegmento)
 
func moverSerpiente() -> void:
	if colaSerpiente.size() > 0 and enPartida:
		for i in range(colaSerpiente.size()-1, 0, -1):
			colaSerpiente[i].position = colaSerpiente[i-1].position
		colaSerpiente[0].position = $Serpiente.position
	$Serpiente.position += velocidad

func limpiarNodosNivel() -> void:
	for nodo in get_children():
		if nodo.is_in_group("Pared") or nodo.is_in_group("Fruta"):
			nodo.queue_free()

func avanzarNivel() -> void:
	nivelActual += 1
	if nivelActual >= niveles.size():
		nivelActual = 0
	limpiarNodosNivel()
	generarLaberinto()

func limpiarSerpiente() -> void:
	for segmento in colaSerpiente:
		segmento.queue_free()
	colaSerpiente.clear()

func comenzarPartida() -> void:
	$textoComenzar.visible = false
	enPartida = true
	velocidad = Vector2(tamanyoCasilla, 0)
	$Serpiente.position = Vector2(10*tamanyoCasilla + tamanyoCasilla/2, 
		7*tamanyoCasilla + tamanyoCasilla/2)
	puntos = 0
	$textoPuntos.text = "0"
	limpiarSerpiente()
	limpiarNodosNivel()
	nivelActual = 0
	generarLaberinto()
	segEspera = 0.400

func terminarPartida() -> void:
	$textoComenzar.visible = true
	velocidad = Vector2(0, 0)
	enPartida = false
