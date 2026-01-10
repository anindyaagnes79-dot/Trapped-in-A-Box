extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func back() -> void: get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")


func _on_button_1_pressed() -> void: get_tree().change_scene_to_file("res://Scenes/level1.tscn") # Replace with function body.
