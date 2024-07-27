extends CanvasLayer

@onready var timerLabel: Label = %TimerLabel
@onready var goldLabel: Label = %GoldLabel


func _process(delta: float):
	# Update labels
	timerLabel.text = GameManager.time_elapsed_string
	goldLabel.text = str(GameManager.meat_counter)

