extends Node

@export var food_name = "StaticBody2D_Food"


func handle(player):
	if Input.is_action_just_pressed("InteractItem"):

		if GameManager.food_node:
			var food = GameManager.food_scene.instantiate()
			player.get_parent().add_child(food)
			food.global_position = player.global_position
			
			GameManager.food_node = false

		else:
			for i in range(player.get_slide_collision_count()):
				var col = player.get_slide_collision(i).get_collider()

				if col.name == food_name:
					col.queue_free()
					GameManager.food_node = true

	if Input.is_action_just_pressed("ExitGame"):
		get_tree().quit()
