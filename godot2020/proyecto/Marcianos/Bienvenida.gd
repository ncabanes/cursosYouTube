extends CenterContainer

var timer

func _init():
	timer = Timer.new()
	add_child(timer)
	timer.wait_time = 2.0
	timer.autostart = true
	timer.connect("timeout", self, "terminarTemporizador")

func _process(delta):
	if Input.is_key_pressed(KEY_J):
		get_tree().change_scene("res://Nivel1.tscn")

func terminarTemporizador():
	print("Hola")
	timer.stop()
