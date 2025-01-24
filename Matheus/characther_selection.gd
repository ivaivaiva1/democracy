extends Control

var index : int 

func _on_characther_1_button_pressed() -> void:
	index = 0
func _on_charachter_2_button_pressed() -> void:
	index = 1
func _on_characther_3_button_pressed() -> void:
	index = 2
func _on_characther_4_button_pressed() -> void:
	index = 3

func _on_confirm_button_pressed() -> void:
	if index == null:
		return
	else:
		GameManager.personagem_index = index
		
		
