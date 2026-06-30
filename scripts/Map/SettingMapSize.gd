extends TileMap
# map_width = 120x for 1920
# map_height = 70y for 1080

func _ready() -> void:
	resize_map()
	GameManager.screen_size = get_viewport_rect().size
	print(GameManager.screen_size)

func resize_map():
	clear()
	for x in range(120):
		for y in range(70):
			set_cell(0, Vector2i(x, y), 0, Vector2i(0, 0))
