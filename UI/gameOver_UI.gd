extends CanvasLayer

@onready var time_Label = %TimeLabel
@onready var monster_defeated_Label = %MonsterDefeatedLabel


@export var restart_delay: float = 5.0
var time_survived: String
var monster_defeated: int
var restart_cooldown: float



func _ready():
	time_Label.text = time_survived
	monster_defeated_Label.text = str(monster_defeated)
	restart_cooldown = restart_delay
	
func _process(delta):
	restart_cooldown -= delta
	if restart_cooldown <= 0.0:
		restart_game()


func restart_game():
	GameManager.reset()
	get_tree().reload_current_scene()
