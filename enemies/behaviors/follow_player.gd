extends Node

@export var speed: float = 1.0

var sprite: AnimatedSprite2D
var enemy: Enemy

func _ready():
	enemy = get_parent()
	sprite = enemy.get_node("AnimatedSprite2D")

func _physics_process(delta):
	# direção
	var diference = GameManager.player_position - enemy.position 
	var input_vector = diference.normalized()
		
	enemy.velocity =input_vector * speed * 100.0 		
	
	# Girar sprite
	if input_vector.x > 0:
		sprite.flip_h = false
	elif input_vector.x < 0:
		sprite.flip_h = true
	
	enemy.move_and_slide()


