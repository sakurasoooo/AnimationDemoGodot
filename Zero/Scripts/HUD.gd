extends CanvasLayer

onready var healthMonitor = $Health
onready var skillIcon = $Skill

onready var blink = $Panel

# Called when the node enters the scene tree for the first time.
func _ready():
	pass  # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.health >= 3:
		healthMonitor.modulate.h = 108 / 360.0
	elif Global.health == 2:
		healthMonitor.modulate.h = 48 / 360.0
	elif Global.health <= 1:
		healthMonitor.modulate.h = 0 / 360.0

	skillIcon.visible = Global.hasGun

	if blink.modulate.a > 0:
		blink.modulate.a -= delta

func apply_damage():
	Global.health-=1
	blink.modulate.a = 0.8
