extends Node

var food_node = false
var food_scene = preload("res://scenes/Food.tscn")

@onready var Spawn_Start = get_node("/root/MainScreen/Persistent/Spawn_Start")
@onready var Spawn_Anthill = get_node("/root/MainScreen/Persistent/Spawn_Entrance_Anthill")
@onready var Spawn_World = get_node("/root/MainScreen/Persistent/Spawn_Entrance_World")
@onready var World = get_node("/root/MainScreen/World_Layer/World")
@onready var Anthill = get_node("/root/MainScreen/World_Layer/Anthill")

func _ready():
	World.visible = false
