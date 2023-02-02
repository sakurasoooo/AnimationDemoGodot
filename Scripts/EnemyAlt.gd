extends KinematicBody2D

onready var sprite = $PlayerSprite

func change():
	sprite.modulate = Color.red


func _on_EnemyAlternate_body_entered(body:Node):
	if body.name == "player":
		body.emit_signal("hurt")
	queue_free()
