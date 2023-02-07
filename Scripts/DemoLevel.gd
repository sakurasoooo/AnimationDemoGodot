extends Node2D

onready var scenePlayer = $AnimationPlayer
onready var choiceButtonLayer = $Choose

onready var canvas = $Canvas

func _ready():
	scenePlayer.play("Start")

func play_branchA():
	scenePlayer.play("BranchA")

func play_branchB():
	scenePlayer.play("BranchB")


func get_gun():
	Global.hasGun = true

func _on_UpButton_pressed():
	play_branchB()
	choiceButtonLayer.hide()
	canvas.hide()


func _on_LeftButton_pressed():
	play_branchA()
	choiceButtonLayer.hide()
	canvas.hide()
