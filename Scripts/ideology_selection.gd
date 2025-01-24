extends Control

var max_ideo : int = 3
@onready var selected_ideologies = []

@onready var button: Button = $Control/PautasContainer/Button
@onready var button_2: Button = $Control/PautasContainer/Button2
@onready var button_3: Button = $Control/PautasContainer/Button3
@onready var button_4: Button = $Control/PautasContainer/Button4
@onready var button_5: Button = $Control/PautasContainer/Button5
@onready var button_6: Button = $Control/PautasContainer/Button6
@onready var button_7: Button = $Control/PautasContainer/Button7
@onready var button_8: Button = $Control/PautasContainer/Button8



@onready var buttons = [button, button_2, button_3, button_4, button_5, button_6, button_7. button_8]




func _on_confirm_pressed() -> void:
	if selected_ideologies.size() == 3:
		GameManager.pautas_selecionadas = selected_ideologies
		get_tree().change_scene_to_file("res://Leandro/main scene.tscn")


func _on_remove_pressed() -> void:
	selected_ideologies.clear()
	for index in buttons.size():
		buttons[index].toggle_mode = false


func _on_button_pressed() -> void:
	if selected_ideologies.size() < 3:
		selected_ideologies.append("")
		button.toggle_mode = true
	else:
		print("Ideologias já selecionadas")
func _on_button_2_pressed() -> void:
	if selected_ideologies.size() < 3:
		selected_ideologies.append("")
		button_2.toggle_mode = true
	else:
		print("Ideologias já selecionadas")
func _on_button_3_pressed() -> void:
	if selected_ideologies.size() < 3:
		selected_ideologies.append("")
		button_3.toggle_mode = true
	else:
		print("Ideologias já selecionadas")
func _on_button_4_pressed() -> void:
	if selected_ideologies.size() < 3:
		selected_ideologies.append("")
		button_4.toggle_mode = true
	else:
		print("Ideologias já selecionadas")
func _on_button_5_pressed() -> void:
	if selected_ideologies.size() < 3:
		selected_ideologies.append("")
		button_5.toggle_mode = true
	else:
		print("Ideologias já selecionadas")
func _on_button_6_pressed() -> void:
	if selected_ideologies.size() < 3:
		selected_ideologies.append("")
		button_6.toggle_mode = true
	else:
		print("Ideologias já selecionadas")
func _on_button_7_pressed() -> void:
	if selected_ideologies.size() < 3:
		selected_ideologies.append("")
		button_7.toggle_mode = true
	else:
		print("Ideologias já selecionadas")
		
func _on_button_8_pressed() -> void:
	if selected_ideologies.size() < 3:
		selected_ideologies.append("")
		button_8.toggle_mode = true
	else:
		print("Ideologias já selecionadas")
