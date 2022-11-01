extends Node2D
export (int) var follow_speed = 50

func _ready():
	pass

func _process(delta):
	pass
	if Input.is_action_just_pressed("reset"):
		GameStats.spawn()
	




func _on_Imageremovebgpreview1_child_entered_tree(node):
	get_tree().change_scene("res://Menu.gd")


func _on_Imageremovebgpreview1_area_entered(area):
	pass # Replace with function body.



