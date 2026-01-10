extends Control

func start(): get_tree().change_scene_to_file("res://level_select.tscn")
	
func option(): $OptionPanel.visible = true
	
func quit(): get_tree().quit(0)


func credit() -> void: $CreditPanel.visible = true
