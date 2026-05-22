extends Sprite2D

var velocity := Vector2(100,100)

func _process(delta: float) -> void:
	
	
	var direction := Vector2(0,0)
	
	position += velocity * delta
	
	rotation = velocity.angle()
