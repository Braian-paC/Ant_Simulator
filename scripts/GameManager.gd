extends Node

var food_node = false
var food_world = true
var food_anthill = false
var food_scene = preload("res://scenes/Food.tscn")
var food_col = null

@onready var Spawn_Start = get_node("/root/MainScreen/Persistent/Spawn_Start")
@onready var Spawn_Anthill = get_node("/root/MainScreen/Persistent/Spawn_Entrance_Anthill")
@onready var Spawn_World = get_node("/root/MainScreen/Persistent/Spawn_Entrance_World")
@onready var World = get_node("/root/MainScreen/World_Layer/World")
@onready var Anthill = get_node("/root/MainScreen/World_Layer/Anthill")
@onready var FoodGetNode = get_node("/root/MainScreen/Persistent/StaticBody2D_Food")

func _ready():
	World.visible = false
	FoodGetNode.visible = false
