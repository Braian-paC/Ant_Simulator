extends Node

@export var speed = 300


func handle(player):
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down")
	player.velocity = input_direction * speed
	
	if input_direction != Vector2.ZERO:
		player.velocity = input_direction * speed
		player.rotation = player.velocity.angle()
	else:
		player.velocity = player.velocity.move_toward(Vector2.ZERO, speed)
