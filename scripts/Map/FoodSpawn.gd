extends Node2D

var VectorX = randf_range(150, 1770)
var VectorY = randf_range(150, 930)

func _ready():
	GameManager.FoodGetNode.position = Vector2(VectorX, VectorY)
