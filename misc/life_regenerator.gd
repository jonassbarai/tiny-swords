extends AnimatedSprite2D

@export var regeneration_amount: int = 10


func _ready():
	$Area2D.body_entered.connect(on_Body_Enter)
	
func on_Body_Enter(body: Node2D):
	if body.is_in_group("Player"):
		var player = body
		player.heal(regeneration_amount)
		queue_free()
	pass
	
