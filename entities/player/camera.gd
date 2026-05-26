extends Camera2D

var zoom_step := 0.2
var min_zoom := 1.0
var max_zoom := 2.0

var target_zoom := Vector2(1, 1)
var zoom_smooth_speed := 8.0

func _ready():
	target_zoom = zoom

func _process(delta):

	if Input.is_action_just_pressed("zoom_in"):
		target_zoom -= Vector2(zoom_step, zoom_step)

	if Input.is_action_just_pressed("zoom_out"):
		target_zoom += Vector2(zoom_step, zoom_step)

	target_zoom.x = clamp(target_zoom.x, min_zoom, max_zoom)
	target_zoom.y = clamp(target_zoom.y, min_zoom, max_zoom)

	zoom = zoom.lerp(target_zoom, zoom_smooth_speed * delta)
