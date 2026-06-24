extends Node

var food_node = null
@export var food_name = "StaticBody2D_Food"

func handle(player):
	if Input.is_action_just_pressed("InteractItem"):
		if food_node:
			var pos = player.global_position
			player.get_parent().add_child(food_node)
			food_node.global_position = pos
			food_node = null

		else:
			for i in range(player.get_slide_collision_count()):
				var col = player.get_slide_collision(i).get_collider()

				if col.name == food_name:
					food_node = col
					food_node.get_parent().remove_child(food_node)

	if Input.is_action_just_pressed("ExitGame"):
		get_tree().quit()
