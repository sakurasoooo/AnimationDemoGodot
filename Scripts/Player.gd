extends KinematicBody2D
signal hurt()
signal death()

onready var anim = $PlayerSprites
onready var hud = $Canvas
onready var shootSfx = $AudioManager/Explosion

var target

func _ready():
	anim.play("Idle")


func _on_Player_hurt():
	hud.apply_damage()

	if(Global.health == 0):
		anim.play("Death")
		emit_signal("death")


func _on_Area2D_area_entered(area:Area2D):
	target = area

func _process(delta):
	if Input.is_action_pressed("Shoot") and Global.hasGun:
		if is_instance_valid(target):
			if target.attacking:
				var name = anim.animation
				anim.play("ShootUp")
				anim.speed_scale = 4
				target._remove()
				target = null
				shootSfx.play()
				yield(get_tree().create_timer(0.2), "timeout")
				
				anim.speed_scale = 1
				anim.play(name)
