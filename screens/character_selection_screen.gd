extends Node2D

@onready var advanceAnimations = get_node("%AdvanceAnimations")
@onready var alien1 = get_node("%Alien1")
@onready var alien2 = get_node("%Alien2")
@onready var alien3 = get_node("%Alien3")
@onready var alien4 = get_node("%Alien4")
@onready var alien5 = get_node("%Alien5")
@onready var alien6 = get_node("%Alien6")
@onready var alien7 = get_node("%Alien7")
@onready var alien8 = get_node("%Alien8")
@onready var alien9 = get_node("%Alien9")
@onready var alien10 = get_node("%Alien10")
const ADVANCE_ANIMATION_TIME = 0.5
const worldScreen = "res://screens/world.tscn"
const maxFrames = 4

func _ready():
	advanceAnimations.wait_time = ADVANCE_ANIMATION_TIME

func _on_advance_animations_timeout():
	alien1.frame = (alien1.frame + 1) % maxFrames
	alien2.frame = (alien2.frame + 1) % maxFrames
	alien3.frame = (alien3.frame + 1) % maxFrames
	alien4.frame = (alien4.frame + 1) % maxFrames
	alien5.frame = (alien5.frame + 1) % maxFrames
	alien6.frame = (alien6.frame + 1) % maxFrames
	alien7.frame = (alien7.frame + 1) % maxFrames
	alien8.frame = (alien8.frame + 1) % maxFrames
	alien9.frame = (alien9.frame + 1) % maxFrames
	alien10.frame = (alien10.frame + 1) % maxFrames


func _on_alien_1_button_pressed():
	Global.characterSelected = 1
	var _level = get_tree().change_scene_to_file(worldScreen)

func _on_alien_2_button_pressed():
	Global.characterSelected = 2
	var _level = get_tree().change_scene_to_file(worldScreen)

func _on_alien_3_button_pressed():
	Global.characterSelected = 3
	var _level = get_tree().change_scene_to_file(worldScreen)

func _on_alien_4_button_pressed():
	Global.characterSelected = 4
	var _level = get_tree().change_scene_to_file(worldScreen)


func _on_alien_5_button_pressed():
	Global.characterSelected = 5
	var _level = get_tree().change_scene_to_file(worldScreen)


func _on_alien_6_button_pressed():
	Global.characterSelected = 6
	var _level = get_tree().change_scene_to_file(worldScreen)


func _on_alien_7_button_pressed():
	Global.characterSelected = 7
	var _level = get_tree().change_scene_to_file(worldScreen)


func _on_alien_8_button_pressed():
	Global.characterSelected = 8
	var _level = get_tree().change_scene_to_file(worldScreen)


func _on_alien_9_button_pressed():
	Global.characterSelected = 9
	var _level = get_tree().change_scene_to_file(worldScreen)


func _on_alien_10_button_pressed():
	Global.characterSelected = 10
	var _level = get_tree().change_scene_to_file(worldScreen)
