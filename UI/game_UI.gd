extends CanvasLayer

@onready var timerLabel: Label = %TimerLabel
@onready var goldLabel: Label = %GoldLabel

var time_elapsed: float = 0
var meat_counter:int =0
var gold_counter:int =0

func _ready():
	GameManager.player.meat_collected.connect(on_meat_collected)
	GameManager.player.gold_collected.connect(on_gold_collected)
	goldLabel.text = str(gold_counter) + "G"

func _process(delta):
	time_elapsed += delta
	# florri arredonda para baixo
	var time_elapsed_seconds: int = floori(time_elapsed)
	var seconds: int = time_elapsed_seconds %60
	var minutes: int = time_elapsed_seconds /60
	timerLabel.text = str(time_elapsed)	
	timerLabel.text = "%02d:%02d" %[minutes, seconds]

func on_meat_collected(value: int):
	meat_counter  += value	

func on_gold_collected(value: int):
	gold_counter  += value
	goldLabel.text = str(gold_counter) + "G"	

