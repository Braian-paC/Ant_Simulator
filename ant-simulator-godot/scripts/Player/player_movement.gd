extends Node

@export var speed = 300

func handle(player):
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down")
	player.velocity = input_direction * speed
