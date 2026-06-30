extends Node2D

var RNG = RandomNumberGenerator.new()
var Food_tscn = preload("res://scenes/Food.tscn")

@onready var WorldBody = get_node("/root/MainScreen/World_Layer/World/WorldBody")
@onready var AnthillBody = get_node("/root/MainScreen/World_Layer/Anthill/AnthillBody")

func _ready():
	WorldBody.position = Vector2(120, 950)
	AnthillBody.position.x = 960
	
	for i in range(5):
		var Food = Food_tscn.instantiate()
		
		Food.position = Vector2(RNG.randf_range(150, 1770), RNG.randf_range(150, 930))
		
		GameManager.World.add_child(Food)
