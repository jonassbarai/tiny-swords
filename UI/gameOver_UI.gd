extends CanvasLayer

@onready var time_Label = %TimeLabel
@onready var monster_defeated_Label = %MonsterDefeatedLabel

@export var restart_delay: float = 5.0
var time_survived: String
var monster_defeated: int
var restart_cooldown: float


func _ready():
	time_Label = time_survived
	monster_defeated_Label = str(monster_defeated)
	
func _process(delta):
	restart_cooldown -= delta
	if restart_cooldown == 0:
		restart_game()

func restart_game():
	pass
 
