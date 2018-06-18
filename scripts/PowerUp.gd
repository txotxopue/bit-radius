# PowerUp.gd

extends Area2D

const POWERUP_SIZE = 16

var velocity = Vector2(-200, 0)

func _ready():
    pass

func _process(delta):
    translate(velocity * delta)
    
    # If it's out of screen.
    if position.x < (0 - POWERUP_SIZE):
        queue_free()
    pass