# Spawner_Enemy.gd

extends Node

const ENEMY_SIZE = 16

const enemies = [
    preload("res://scenes/EnemyKamikaze.tscn"),
    preload("res://scenes/EnemyClever.tscn"),
]

func _ready():
    yield(Utils.create_timer(1.2), "timeout")
    spawn()
    pass

func spawn():
    while true:
        randomize() # changes random seed.
        var enemy = Utils.choose(enemies).instance()
        var pos = Vector2()
        pos.y = rand_range(0 + ENEMY_SIZE, Utils.view_size.y - ENEMY_SIZE)
        pos.x = Utils.view_size.x + ENEMY_SIZE
        enemy.position = pos
        $Container.add_child(enemy)
        yield(Utils.create_timer(rand_range(0.5, 1.25)), "timeout")
    pass
