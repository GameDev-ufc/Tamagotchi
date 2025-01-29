extends AudioStreamPlayer

var music: Array = [
	preload("res://assets/audio/background_music/beanfeast.mp3"),
	preload("res://assets/audio/background_music/dramatic_boi.mp3"), 
	preload("res://assets/audio/background_music/dramatic_boi_v2.mp3"), 
	preload("res://assets/audio/background_music/dramatic_boi_v3.mp3"), 
	preload("res://assets/audio/background_music/dramatic_boi_v4.mp3"), 
	preload("res://assets/audio/background_music/dramatic_boi_v5.mp3"), 
	preload("res://assets/audio/background_music/frozen_winter.mp3"), 
	preload("res://assets/audio/background_music/hope.mp3"), 
	preload("res://assets/audio/background_music/woo_scary.mp3"), 
]

func play_music(index: int) -> void:
	stream = music[index]
	play()
