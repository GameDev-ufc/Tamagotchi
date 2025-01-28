extends Node

class_name GameController

func _ready() -> void:
	for button in get_tree().get_nodes_in_group("buttons"):
		button.pressed.connect(self._on_button_pressed.bind(button))


func _on_button_pressed(button: Button) -> void:
	match button.name:
		"button_green":
			pass
		"button_pink":
			pass
		"button_white":
			pass
		"button_left":
			pass
		"button_right":
			pass
		"credits":
			pass
		"configs":
			pass
