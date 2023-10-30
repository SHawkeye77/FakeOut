extends Node2D

var characterSelectionScreen = "res://screens/character_selection_screen.tscn"

func _ready():
	# Resetting variables
	Global.characterSelected = -1
	Global.whoWon = "TO_BE_SET"

func _on_play_button_pressed():
	var _level = get_tree().change_scene_to_file(characterSelectionScreen)
