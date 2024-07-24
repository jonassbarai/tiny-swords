extends Node
signal game_over

var player: Player
var player_position: Vector2
var meat_counter: int = 0
var gold_counter: int = 0
var is_game_over: bool = false

func end_game():
	if is_game_over: return
	is_game_over = true
	game_over.emit()
