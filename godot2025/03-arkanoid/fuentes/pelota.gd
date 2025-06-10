extends RigidBody2D

func _ready() -> void:
	contact_monitor = true
	max_contacts_reported = 4

func _on_body_entered(body: Node) -> void:
	#print("Colision")
	if body.is_in_group("Ladrillo"):
		body.queue_free()
