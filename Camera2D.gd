extends Camera2D

var target = null
var zoomed = false
var center = Vector2.ZERO


func _ready():
	center = get_viewport_rect().size/2
	
func _process(delta):
	if Input.is_action_just_pressed("zoom"):
		if zoomed:
			target = center
			zoomed = false
		else:
			target = get_parent().get_node("Player")
			zoomed = true
	
	if zoomed:
		zoom = Vector2(0.3,0.3)
		position = target.global_position
	
	else:
		zoom = Vector2(1,1)
		position = center

