extends Camera2D

var target = null
var zoomed = false
var center = Vector2.ZERO


func _ready():
	center = get_viewport_rect().size/2

func _process(delta):
	if Input.is_action_pressed("zoom"):
		if zoomed:
			target = null
			zoomed = false
		else:
			target = owner.get_node("Player").global_position
			zoomed = true
	
	if zoomed:
		zoom = zoom.move_toward(Vector2(0.3,0.3), .03)
		position = position.move_toward(target,80)
	
	else:
		zoom = zoom.move_toward(Vector2(1,1),0.03)
		position = position.move_toward(center,80)

