extends Node

var global_position = null

func handle(player):
	for i in range(player.get_slide_collision_count()):
		var col = player.get_slide_collision(i).get_collider()

		if col.name == "AnthillBody":
			GameManager.Anthill.visible = false
			GameManager.World.visible = true
			GameManager.World.get_node("WorldBody/CollisionShape2D").set_deferred("disabled", false)
			GameManager.Anthill.get_node("AnthillBody/CollisionShape2D").set_deferred("disabled", true)
			player.position = Vector2(120, 880)
			GameManager.current_scene = GameManager.World

		if col.name == "WorldBody":
			GameManager.World.visible = false
			GameManager.Anthill.visible = true
			GameManager.World.get_node("WorldBody/CollisionShape2D").set_deferred("disabled", true)
			GameManager.Anthill.get_node("AnthillBody/CollisionShape2D").set_deferred("disabled", false)
			player.position = Vector2(960, 40)
			GameManager.current_scene = GameManager.Anthill
