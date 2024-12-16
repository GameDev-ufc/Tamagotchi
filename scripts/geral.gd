extends Node2D


@export var tempo_miado : int = 10
@export var tempo_comida : int = 60
@export var pode_comer : bool = false
@export var pode_morrer : bool = false

@onready var gato : AnimatedSprite2D = $gato
@onready var balao : Sprite2D = $balao
@onready var t_tempo_comida : Timer = $balao/tempo_comida
@onready var audio_miado : AudioStreamPlayer = $gato/audio_miado
@onready var cat_trilling : AudioStreamPlayer = $gato/cat_trilling


func _on_botao_pressed() -> void:
	if tempo_comida <= 0:
		cat_trilling.play()
		gato.play("comendo")
		await gato.animation_finished
		gato.play("idle")
		tempo_comida = 60


func _on_miado_timer_timeout() -> void:
	if tempo_miado <= 0:
		audio_miado.play()
		tempo_miado = 10
		gato.play("miado")
		await gato.animation_finished
		gato.play("idle")
	tempo_miado -= 1


func _on_tempo_comida_timeout() -> void:
	if tempo_comida <= 0:
		balao.show()
		await get_tree().create_timer(3).timeout
		balao.hide()
		tempo_comida = 60
	tempo_comida -= 1
	print(tempo_comida)
