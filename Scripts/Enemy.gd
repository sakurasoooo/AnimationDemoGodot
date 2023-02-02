extends Area2D


onready var sprite = $PlayerSprite

var attacking: bool = false

func change():
	sprite.modulate = Color.red
	attacking = true


func _on_EnemyAlternate_body_entered(body:Node):
	if body.name == "Player":
		body.emit_signal("hurt")
	
	_remove()


func _remove():
	Engine.time_scale = 1
	queue_free()
