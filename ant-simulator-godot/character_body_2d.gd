extends CharacterBody2D

@export var speed = 300
@export var can_change_scene = true
@export var food = "StaticBody2D_Food"
var food_node = null
var world

func _ready():
	world = get_parent().get_parent()
	await get_tree().process_frame
	_set_spawn()

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_E:
			if food_node != null:
				var global_pos = global_position
				world.add_child(food_node)
				food_node.global_position = Vector2(global_pos)
				print(global_pos)
				print(food_node.global_position)
			else:
				print("Valor nulo")
			for i in range(get_slide_collision_count()):
				var collision = get_slide_collision(i)
				if collision.get_collider().name == food:
					food_node = collision.get_collider()
					food_node.get_parent().remove_child(food_node)

func get_input():
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down") # Direction of Movement
	velocity = input_direction * speed

func _set_spawn():
	var spawn_name = GameManager.next_spawn
	var spawn = get_tree().current_scene.get_node_or_null(spawn_name)
	if spawn:
		global_position = spawn.global_position

func _change_scene(path):
	get_tree().change_scene_to_file(path)

func get_collision():
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		if collision.get_collider().name == "StaticBody2D_Anthill_1" and can_change_scene:
			can_change_scene = false
			GameManager.next_spawn = "Spawn_Entrance_2"
			call_deferred("_change_scene", "res://scenes/Anthill.tscn")
		elif collision.get_collider().name == "StaticBody2D_Anthill_2" and can_change_scene:
			can_change_scene = false
			GameManager.next_spawn = "Spawn_Entrance_1"
			call_deferred("_change_scene", "res://scenes/World.tscn")

func _physics_process(delta):
	get_input()
	move_and_slide()
	get_collision()
