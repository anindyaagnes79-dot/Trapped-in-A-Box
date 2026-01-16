extends Control

@onready var button: Button = $"Button1"
@onready var button2: Button = $Button2
@onready var button3: Button = $"Button3"
@onready var button4: Button = $"Button4"
@onready var lock1: Sprite2D = $"Lock1"
@onready var lock2: Sprite2D = $"Lock2"
@onready var lock3: Sprite2D = $"Lock3"

func back() -> void: get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

func _ready() -> void:
	button.grab_focus()
	#if LevelCore.lv1completed == true:
		#lock1.visible = false
	#if LevelCore.lv1completed == false:
		#lock1.visible = true
		#
	#if LevelCore.lv2completed == true:
		#lock2.visible = false
	#if LevelCore.lv2completed == false:
		#lock2.visible = true
		#
	#if LevelCore.lv3completed == true:
		#lock3.visible = false
	#if LevelCore.lv3completed == false:
		#lock3.visible = true
		

func _on_button_1_pressed() -> void:
	if LevelCore.lv1completed == false:
		get_tree().change_scene_to_file("res://leveltes.tscn") #restart
	else:
		get_tree().change_scene_to_file("res://leveltes.tscn") #lv2

func _on_button_2_pressed() -> void:
	if LevelCore.lv2completed == false:
		null
	else:
		get_tree().change_scene_to_file("res://level2.tscn") #lv3
	

func _on_button_3_pressed() -> void:
	if LevelCore.lv3completed == false:
		null
	else:
		get_tree().change_scene_to_file("res://level3.tscn") #lv4
	

func _on_button_4_pressed() -> void:
	if LevelCore.lv4completed == false:
		null
	else:
		pass #get_tree().change_scene_to_file() #game end
