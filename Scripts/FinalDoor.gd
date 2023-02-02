extends Area2D

onready var anim = $"Door Animation"
onready var block = $"Door Body/Door Body Collider"
onready var collider = $"Door Collider"

func _ready():
	pass


func _on_Door_body_entered(body):
	if(body.name == "Player"):
		anim.play("Open")


func _on_Door_Animation_animation_finished(anim_name):
	yield(get_tree().create_timer(1), "timeout")
	get_tree().change_scene("res://Scenes/Thank.tscn")
