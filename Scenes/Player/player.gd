extends CharacterBody2D
class_name Player

signal on_game_started

@export var gravity := 1000.0
@export var jump_force := 400.0
@export var max_speed := 400.0
@export var rotation_speed := 2.0
@onready var jump_audio: AudioStreamPlayer2D = $JumpAudio

var is_started := false
var should_process_input := true

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	velocity.y = min(velocity.y, max_speed)
	
	if Input.is_action_pressed("jump") and should_process_input:
		if is_started == false:
			is_started = true
			on_game_started.emit()
		jump()
	
	if is_started == false:
		return
	
	move_and_slide()
	rotate_player()

func jump() -> void:
	velocity.y = -jump_force
	rotation = deg_to_rad(-30)
	jump_audio.play()

func rotate_player() -> void:
	if velocity.y > 0 and rad_to_deg(rotation) < 90:
		rotation += rotation_speed * deg_to_rad(1)

func stop_movement() -> void:
	should_process_input = false

func stop_gravity() -> void:
	gravity = 0
	velocity = Vector2.ZERO
