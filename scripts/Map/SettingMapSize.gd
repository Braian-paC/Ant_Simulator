extends Node2D

@onready var TileMap_World: TileMap = $/root/MainScreen/World_Layer/World/TileMap_World
@onready var TileMap_Anthill: TileMap = $/root/MainScreen/World_Layer/Anthill/TileMap_Anthill
# map_width = 120x for 1920
# map_height = 70y for 1080

func _ready() -> void:
	resize_map()

func resize_map():
	TileMap_World.clear()
	TileMap_Anthill.clear()
	
	for x in range(120):
		for y in range(70):
			TileMap_World.set_cell(0, Vector2i(x, y), 0, Vector2i(0, 0))
			TileMap_Anthill.set_cell(0, Vector2i(x, y), 0, Vector2i(0, 0))
