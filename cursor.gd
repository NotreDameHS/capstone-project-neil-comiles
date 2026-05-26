extends Sprite2D

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_HIDDEN
	z_index = 100

func _process(delta):

	position = get_viewport().get_mouse_position()

func _notification(what):
	if what == NOTIFICATION_APPLICATION_FOCUS_IN:
		Input.mouse_mode = Input.MOUSE_MODE_HIDDEN

	elif what == NOTIFICATION_APPLICATION_FOCUS_OUT:
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
