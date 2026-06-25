extends CharacterBody2D

@onready var movement = $Movement
@onready var interaction = $Interaction
@onready var scene_handler = $SceneHandler

func set_spawn():
	global_position = GameManager.Spawn_Start.global_position

func _ready():
	call_deferred("set_spawn")

func _physics_process(delta):
	movement.handle(self)
	move_and_slide()
	scene_handler.handle(self)

func _process(delta):
	interaction.handle(self)
