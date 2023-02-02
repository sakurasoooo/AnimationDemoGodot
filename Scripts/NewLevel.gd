extends Node2D

onready var scenePlayer = $AnimationPlayer
onready var bgm = $BGM

func _ready():
	if Global.hasGun:
		scenePlayer.play("Start_Alt")
	else:
		scenePlayer.play("Start")

func _on_Player_death():
	scenePlayer.stop()
	bgm.stop()
	yield(get_tree().create_timer(2.0), "timeout")
	Global.health = 3
	Global.hasGun = false
	get_tree().change_scene("res://Scenes/MainMenu.tscn")

func slow_down():
	Engine.time_scale = 0.4
