extends Node2D

@onready var World_to_Anthill = get_node("/root/MainScreen/World_Layer/World/World_to_Anthill")
@onready var Anthill_to_World = get_node("/root/MainScreen/World_Layer/Anthill/Anthill_to_World")

func _ready():
	World_to_Anthill.position = Vector2(120, 950)
	Anthill_to_World.position.x = 960
	GameManager.FoodGetNode.position = Vector2(960, 540)
