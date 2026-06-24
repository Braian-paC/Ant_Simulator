extends Node

var can_change_scene = true

func handle(player):

	for i in range(player.get_slide_collision_count()):
		var col = player.get_slide_collision(i).get_collider()

		if col.name == "StaticBody2D_Anthill_1" and can_change_scene:
			can_change_scene = false
			GameManager.next_spawn = "Spawn_Entrance_2"
			get_tree().call_deferred("change_scene_to_file", "res://scenes/Anthill.tscn")

		elif col.name == "StaticBody2D_Anthill_2" and can_change_scene:
			can_change_scene = false
			GameManager.next_spawn = "Spawn_Entrance_1"
			get_tree().call_deferred("change_scene_to_file", "res://scenes/World.tscn")
