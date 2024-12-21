extends Node2D

@export var diversão 	: int = 100
@export var fome 		: int = 100
@export var felicidade 	: int = 60
@export var miado 		: int = 10

@export var pode_comer 	: bool = false
@export var pode_morrer : bool = false

@onready var gato : AnimatedSprite2D = $gato
@onready var balao : Sprite2D = $balao
@onready var audio_miado : AudioStreamPlayer = $gato/audio_miado
@onready var cat_trilling : AudioStreamPlayer = $gato/cat_trilling

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	var my_float = rng.randf_range(-10.0, 10.0)
	var my_int = rng.randi_range(0, 10)
	print(my_float)
	print(my_int)

func _on_botao_pressed() -> void:
	#if tempo_comida <= 0:
	cat_trilling.play()
	gato.play("comendo")
	await gato.animation_finished
	gato.play("idle")
	fome = 100


func _on_miado_timer_timeout() -> void:
	if miado <= 0:
		audio_miado.play()
		miado = 10
		gato.play("miado")
		await gato.animation_finished
		gato.play("idle")
	print("Tempo para miar: ", miado)
	miado -= 1


func _on_tempo_comida_timeout() -> void:
	if fome <= 0:
		balao.show()
		await get_tree().create_timer(3).timeout
		balao.hide()
		fome = 100
	fome -= 1
	print("Nivel de fome: ", fome)
