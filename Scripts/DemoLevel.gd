extends Node2D

onready var scenePlayer = $AnimationPlayer
onready var choiceButtonLayer = $Choose

func _ready():
	scenePlayer.play("Start")
	pass

func play_branchA():
	scenePlayer.play("BranchA")

func play_branchB():
	scenePlayer.play("BranchB")


func _on_UpButton_pressed():
	play_branchB()
	choiceButtonLayer.hide()


func _on_LeftButton_pressed():
	play_branchA()
	choiceButtonLayer.hide()
