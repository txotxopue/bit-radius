# Stars.gd

extends Sprite

export var velocity = Vector2()

func _ready():
	pass

func _process(delta):
	translate(velocity * delta)
	
	if position.x <= (-2 * get_viewport_rect().size.x):
		position.x = 480
	pass
