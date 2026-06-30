extends Node2D

var RNG = RandomNumberGenerator.new()
var Food_tscn = preload("res://scenes/Food.tscn")

func _ready():
	for i in range(0, 10):
		var Food = Food_tscn.instantiate()
		Food.add_to_group("FoodObject")
		
		Food.position = Vector2(RNG.randf_range(150, 1770), RNG.randf_range(150, 930))
		
		GameManager.World.add_child(Food)
		
		print(Food)
