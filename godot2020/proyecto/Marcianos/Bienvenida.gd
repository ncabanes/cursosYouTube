extends CenterContainer

func _ready():
	pass


func _process(delta):
	if Input.is_key_pressed(KEY_J):
		get_tree().change_scene("res://EscenaDeJuego.tscn")
