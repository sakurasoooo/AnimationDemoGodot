extends KinematicBody2D

onready var anim = $PlayerSprites

func _ready():
	anim.play("Idle")
