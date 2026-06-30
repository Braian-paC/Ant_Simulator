extends Node2D

var CarryingFood = false
var food_world = true
var food_anthill = false
var food_col = null
var screen_size = null
var CurrentScene = Anthill
var CurrentCol = null

var World_tscn = preload("res://scenes/World.tscn")
var Anthill_tscn = preload("res://scenes/Anthill.tscn")

@onready var Player = get_node("/root/MainScreen/Persistent/Player")
@onready var World = get_node("/root/MainScreen/World_Layer/World")
@onready var Anthill = get_node("/root/MainScreen/World_Layer/Anthill")

func _ready():
	Player.position = Vector2(960, 540)
