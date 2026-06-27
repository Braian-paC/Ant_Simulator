extends Node

var global_position = null

func handle(player):
	for i in range(player.get_slide_collision_count()):
		var col = player.get_slide_collision(i).get_collider()

		if col.name == "Anthill_to_World":
			GameManager.Anthill.visible = false
			GameManager.World.visible = true
			player.position = Vector2(120, 880)
			if GameManager.food_world == true:
				if GameManager.food_node == false:
					GameManager.FoodGetNode.visible = true
				else:
					print(GameManager.FoodGetNode)
			elif GameManager.food_node == false:
				GameManager.FoodGetNode.visible = false
			else:
				print(GameManager.FoodGetNode)

		if col.name == "World_to_Anthill":
			GameManager.World.visible = false
			GameManager.Anthill.visible = true
			player.position = Vector2(960, 40)
			if GameManager.food_anthill == true:
				if GameManager.food_node == false:
					GameManager.FoodGetNode.visible = true
				else:
					print(GameManager.FoodGetNode)
			elif GameManager.food_node == false:
				GameManager.FoodGetNode.visible = false
			else:
				print(GameManager.FoodGetNode)
