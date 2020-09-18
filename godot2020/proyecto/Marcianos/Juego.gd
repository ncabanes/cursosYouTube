extends Node2D

var puntos = 0

func _ready():
	pass # Replace with function body.


func incrementarPuntos():
	puntos += 10
	#get_node("InterfazDeUsuario/VBoxContainer/LabelPuntos").text = "Puntos: " + str(puntos)
	$InterfazDeUsuario/VBoxContainer/LabelPuntos.text = "Puntos: " + str(puntos)
