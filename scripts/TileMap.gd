extends Node2D

@onready var Tilemap_Layer: TileMap = $TileMap_World

func _ready() -> void:
	var MapSizePixels: Vector2 = GetMapSizePixels()
	print("Map size in pixels: ", MapSizePixels)

func GetMapSizePixels() -> Vector2:
	var UsedRect: Rect2i = Tilemap_Layer.get_used_rect()
	
	var TileSize: Vector2i = Tilemap_Layer.tile_set.tile_size
	
	var Width_px = UsedRect.size.x * TileSize.x
	var Height_px = UsedRect.size.y * TileSize.y
	
	return Vector2(Width_px, Height_px)
	
