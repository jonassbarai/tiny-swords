class_name GameOverUI
extends Node2D

@export var game_ui:CanvasLayer  
@export var game_over_ui_template:PackedScene  
func trigger_game_over():
	
	if game_ui:
		game_ui.queue_free()
		game_ui =null
	
	var game_over_ui  = game_over_ui_template.instantiate()
	game_over_ui.time_survived = GameManager.time_elapsed_string
	game_over_ui.monster_defeated = GameManager.monsters_defeated_counter
	add_child(game_over_ui)

func _ready():
	GameManager.game_over.connect(trigger_game_over)
