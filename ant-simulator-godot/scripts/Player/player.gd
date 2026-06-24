extends CharacterBody2D

@onready var movement = $Movement
@onready var interaction = $Interaction
@onready var scene_handler = $SceneHandler

func set_spawn():
	var spawn_name = GameManager.next_spawn
	var scene = get_tree().current_scene
	var spawn = scene.get_node_or_null(spawn_name)

	if spawn:
		global_position = spawn.global_position
	else:
		print("Spawn não encontrado:", spawn_name)

func _ready():
	call_deferred("set_spawn")

func _physics_process(delta):
	movement.handle(self)
	move_and_slide()
	scene_handler.handle(self)

func _process(delta):
	interaction.handle(self)
