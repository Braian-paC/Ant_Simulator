extends Node2D

@onready var WorldBody = get_node("/root/MainScreen/World_Layer/World/WorldBody")
@onready var AnthillBody = get_node("/root/MainScreen/World_Layer/Anthill/AnthillBody")

func _ready():
	WorldBody.position = Vector2(120, 950)
	AnthillBody.position.x = 960
