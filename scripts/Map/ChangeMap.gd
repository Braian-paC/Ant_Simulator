extends Node

@onready var CollisionsAnthill = FindCollisionsMap(GameManager.Anthill)
@onready var CollisionsWorld = FindCollisionsMap(GameManager.World)

func _ready():
	for collisions in CollisionsWorld:
		collisions.set_deferred("disabled", true)

func _process(_delta):
	CollisionsAnthill = FindCollisionsMap(GameManager.Anthill)
	CollisionsWorld = FindCollisionsMap(GameManager.World)

func FindCollisionsMap (node: Node, collisions: Array[CollisionShape2D] = []):
	for child in node.get_children():
		if child is CollisionShape2D:
			collisions.append(child)
		
		FindCollisionsMap(child, collisions)
		
	return collisions

func Anthill_change():
	GameManager.Player.position = Vector2(960, 40)
	
	GameManager.Anthill.visible = true
	GameManager.World.visible = false

	for collisions in CollisionsAnthill:
		collisions.set_deferred("disabled", false)
	for collisions in CollisionsWorld:
		collisions.set_deferred("disabled", true)

func World_change():
	GameManager.Player.position = Vector2(120, 880)
	
	GameManager.World.visible = true
	GameManager.Anthill.visible = false
	
	for collisions in CollisionsWorld:
		collisions.set_deferred("disabled", false)
	for collisions in CollisionsAnthill:
		collisions.set_deferred("disabled", true)
