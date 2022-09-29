extends Node2D
export (int) var follow_speed = 50

func _ready():
	pass

func _process(delta):
	pass
	if Input.is_action_just_pressed("reset"):
		GameStats.spawn()






