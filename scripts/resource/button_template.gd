extends Button

func _ready() -> void:
	self.pivot_offset = self.get_size() / 2
	for button in get_tree().get_nodes_in_group("buttons"):
		if not button.pressed.is_connected(self._on_button_pressed.bind(button)):
			button.pressed.connect(self._on_button_pressed.bind(button))


func _on_button_pressed(button: Button) -> void:
	tween_scale(button, "scale", Vector2(1, 1), Vector2(0.9, 0.9), 0.4)
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



func tween_scale(object: Button, property: NodePath, start_val: Variant, end_val: Variant, duration: float) -> void:
	var tween : Tween = create_tween()
	tween.tween_property(object, property, end_val, duration / 2).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(object, property, start_val, duration / 2).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT).from_current()
