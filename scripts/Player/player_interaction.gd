extends Node

@export var food_name = "FoodBody"
var actual_food = null

func handle(player):
	if Input.is_action_just_pressed("InteractItem"):

		for i in range(player.get_slide_collision_count()):
			GameManager.food_col = player.get_slide_collision(i).get_collider()
		print(actual_food)
		print(GameManager.food_col)
		if GameManager.food_col:
			if GameManager.food_col.name == food_name and GameManager.CarryingFood == false:
#				GameManager.food_col.reparent(player)
				GameManager.food_col.visible = false
				GameManager.food_col.get_node("CollisionShape2D").set_deferred("disabled", true)
				GameManager.CarryingFood = true
				actual_food = GameManager.food_col
				GameManager.food_col = null

		elif GameManager.CarryingFood == true:
			actual_food.reparent(GameManager.current_scene)
			actual_food.global_position = player.global_position
			actual_food.visible = true
			actual_food.get_node("CollisionShape2D").set_deferred("disabled", false)
			GameManager.CarryingFood = false

	if Input.is_action_just_pressed("ExitGame"):
		get_tree().quit()
