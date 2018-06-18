# SpawnerPowerUp.gd

extends Node

const powerups = [
    preload("res://scenes/PowerUpArmor.tscn"),
    preload("res://scenes/PowerUpLaser.tscn"),
]
const POWERUP_SIZE = 16

func _ready():
    spawn()
    pass

func spawn():
	while true:
		yield(Utils.create_timer(rand_range(10, 15)), "timeout")
		randomize() # changes random seed.
		var powerup = Utils.choose(powerups).instance()
		var pos = Vector2()
		pos.y = rand_range(0 + POWERUP_SIZE, Utils.view_size.y - POWERUP_SIZE)
		pos.x = Utils.view_size.x + POWERUP_SIZE
		powerup.position = pos
		$Container.add_child(powerup)
	pass
