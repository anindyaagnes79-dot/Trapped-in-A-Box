extends CharacterBody2D

@export var step := 28
@export var speed: float = 300.0
@export_enum("Horizontal", "Vertical") var move_axis := "Horizontal"
@export var object_color: Color = Color(1, 1, 1)



static var active_node: CharacterBody2D = null

var target_pos: Vector2
var moving := false
var is_active := false

func _ready():
	target_pos = global_position
	input_pickable = true
	modulate = object_color

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		set_active()

func set_active():
	if active_node and active_node != self:
		active_node.is_active = false

	active_node = self
	is_active = true

func _physics_process(delta):
	if not is_active:
		velocity = Vector2.ZERO
		return

	if not moving:
		var dir := get_input_dir()
		if dir != Vector2.ZERO:
			try_move(dir)
	else:
		var to_target: Vector2 = target_pos - global_position
		var step_move: float = speed * delta

		if to_target.length() <= step_move:
			global_position = target_pos
			velocity = Vector2.ZERO
			moving = false
		else:
			velocity = to_target.normalized() * speed
			move_and_slide()

func get_input_dir() -> Vector2:
	if move_axis == "Horizontal":
		if Input.is_action_just_pressed("ui_right"):
			return Vector2.RIGHT
		if Input.is_action_just_pressed("ui_left"):
			return Vector2.LEFT
	else:
		if Input.is_action_just_pressed("ui_down"):
			return Vector2.DOWN
		if Input.is_action_just_pressed("ui_up"):
			return Vector2.UP
	return Vector2.ZERO

func try_move(dir: Vector2):
	var motion := dir * step
	if not test_move(global_transform, motion):
		target_pos = global_position + motion
		moving = true
