extends Node

var global_position = null

func handle(player):
	for i in range(player.get_slide_collision_count()):
		var col = player.get_slide_collision(i).get_collider()
		print(col.name)

		if col.name == "Anthill_to_World":
			GameManager.Anthill.visible = false
			GameManager.World.visible = true
			player.global_position = GameManager.Spawn_World.global_position

		if col.name == "World_to_Anthill":
			GameManager.World.visible = false
			GameManager.Anthill.visible = true
			player.global_position = GameManager.Spawn_Anthill.global_position
