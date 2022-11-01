extends Area2D

func _ready():
	$AnimationPlayer.play("SpikeTrigger")


func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		SoundPlayer.play_sound_effect("dead")
		print("player dead")
		if GameStats.check_reset() == false:
			body.global_position = GameStats.get_spawn().global_position         
		

