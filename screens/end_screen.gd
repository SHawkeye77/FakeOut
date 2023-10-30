extends Node2D

@onready var winnerLabel = get_node("%WinnerLabel")
const mainMenuScreen = "res://screens/start_screen.tscn"

func _ready():
	winnerLabel.text = "The " + Global.whoWon + " won!"

func _on_main_menu_button_pressed():
	var _level = get_tree().change_scene_to_file(mainMenuScreen)
