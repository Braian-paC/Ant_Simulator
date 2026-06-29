extends Node

var global_position = null

func handle(player):
	for i in range(player.get_slide_collision_count()):
		var col = player.get_slide_collision(i).get_collider()

		if col.name == "Anthill_to_World":
			GameManager.Anthill.visible = false
			GameManager.World.visible = true
			GameManager.World.get_node("World_to_Anthill/CollisionShape2D").set_deferred("disabled", false)
			GameManager.Anthill.get_node("Anthill_to_World/CollisionShape2D").set_deferred("disabled", true)
			
			player.position = Vector2(120, 880)
			if GameManager.food_world == true:
				if GameManager.food_node == false:
					GameManager.FoodGetNode.visible = true
					GameManager.FoodGetNodeCollision.set_deferred("disabled", false)
				else:
					print(GameManager.FoodGetNode)
			elif GameManager.food_node == false:
				GameManager.FoodGetNode.visible = false
				GameManager.FoodGetNodeCollision.set_deferred("disabled", true)
			else:
				print(GameManager.FoodGetNode)

		if col.name == "World_to_Anthill":
			GameManager.World.visible = false
			GameManager.Anthill.visible = true
			GameManager.World.get_node("World_to_Anthill/CollisionShape2D").set_deferred("disabled", true)
			GameManager.Anthill.get_node("Anthill_to_World/CollisionShape2D").set_deferred("disabled", false)
			player.position = Vector2(960, 40)
			if GameManager.food_anthill == true:
				if GameManager.food_node == false:
					GameManager.FoodGetNode.visible = true
					GameManager.FoodGetNodeCollision.set_deferred("disabled", false)
				else:
					print(GameManager.FoodGetNode)
			elif GameManager.food_node == false:
				GameManager.FoodGetNode.visible = false
				GameManager.FoodGetNodeCollision.set_deferred("disabled", true)
			else:
				print(GameManager.FoodGetNode)
