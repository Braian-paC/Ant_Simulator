extends Node

@export var food_name = "StaticBody2D_Food"


func handle(player):
	if Input.is_action_just_pressed("InteractItem"):

		if GameManager.food_node:
			var food = GameManager.food_scene.instantiate()
			GameManager.FoodGetNode = food
			player.get_parent().add_child(food)
			food.global_position = player.global_position
			
			if GameManager.Anthill.visible:
				print('Anthill visível')
				GameManager.food_anthill = true
			else:
				print('Anthill invisível')
				GameManager.food_anthill = false
			if GameManager.World.visible:
				print('World visível')
				GameManager.food_world = true
			else:
				print('World invisível')
				GameManager.food_world = false
			
			GameManager.food_node = false

		else:
			for i in range(player.get_slide_collision_count()):
				GameManager.food_col = player.get_slide_collision(i).get_collider()

				if GameManager.food_col.name == food_name:
					GameManager.food_col.queue_free()
					
					GameManager.food_node = true

	if Input.is_action_just_pressed("ExitGame"):
		get_tree().quit()
