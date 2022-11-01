extends Control


func _ready():
	pass


func _on_QuitButton_pressed():
	get_tree().change_scene("res://Menu.gd")
	
func _on_ResumeButton_pressed():
	get_tree().change_scene("res://World.tscn")
	
func get_input():
	if Input.is_action_just_pressed("Pause"):
		get_tree().change_scene("res://PauseMenu.tscn")

