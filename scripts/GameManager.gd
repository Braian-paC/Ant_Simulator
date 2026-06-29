extends Node2D

var food_node = false
var food_world = true
var food_anthill = false
var food_scene = preload("res://scenes/Food.tscn")
var food_col = null
var screen_size = null

@onready var Player = get_node("/root/MainScreen/Persistent/CharacterBody2D")
@onready var World = get_node("/root/MainScreen/World_Layer/World")
@onready var Anthill = get_node("/root/MainScreen/World_Layer/Anthill")
@onready var FoodGetNode = get_node("/root/MainScreen/Persistent/StaticBody2D_Food")
@onready var FoodGetNodeCollision = get_node("/root/MainScreen/Persistent/StaticBody2D_Food/CollisionShape2D")

func _ready():
	FoodGetNode.visible = false
	FoodGetNodeCollision.set_deferred("disabled", true)
	World.get_node("World_to_Anthill/CollisionShape2D").set_deferred("disabled", true)
	Player.position = Vector2(960, 540)
