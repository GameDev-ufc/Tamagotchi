extends AudioStreamPlayer

var sfx: Array = [
	preload("res://assets/audio/ui_sound_effects/Retro12.ogg"),
	preload("res://assets/audio/ui_sound_effects/Coffee1.ogg"),
	preload("res://assets/audio/ui_sound_effects/Coffee2.ogg")
]

func play_sfx(index: int) -> void:
	stream = sfx[index]
	play()
