extends CharacterBody2D

@export var speed = 400

func get_input():
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down") # Direction of Movement
	velocity = input_direction * speed
	
func _ready():
	await get_tree().process_frame
	_set_spawn()

func _set_spawn():
	var spawn_name = GameManager.next_spawn
	var spawn = get_tree().current_scene.get_node_or_null(spawn_name)
	if spawn:
		global_position = spawn.global_position

func get_collision():
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		print(collision.get_collider().name)
		if collision.get_collider().name == "StaticBody2D_Anthill_1":
			get_tree().change_scene_to_file("res://Anthill.tscn")
			GameManager.next_spawn = "Spawn_Entrance_2"
		elif collision.get_collider().name == "StaticBody2D_Anthill_2":
			GameManager.next_spawn = "Spawn_Entrance_1"
			get_tree().change_scene_to_file("res://World.tscn")

func _physics_process(delta):
	get_input()
	move_and_slide()
	get_collision()
