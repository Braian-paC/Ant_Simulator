extends Node

@onready var ChangeMap = $"../ChangeMapNode"

func handle(player):
	for i in range(player.get_slide_collision_count()):
		GameManager.CurrentCol = player.get_slide_collision(i).get_collider()

		if GameManager.CurrentCol.name == "AnthillBody":
			ChangeMap.World_change()
			GameManager.CurrentScene = GameManager.World

		if GameManager.CurrentCol.name == "WorldBody":
			ChangeMap.Anthill_change()
			GameManager.CurrentScene = GameManager.Anthill
