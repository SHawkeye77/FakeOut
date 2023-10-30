extends Node2D

@onready var shotsLabel = get_node("%ShotsLabel")
@onready var shotAudio = get_node("%Shot")
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
const endScreen = "res://screens/end_screen.tscn"
var shotsLeft = Global.TOTAL_SHOTS

func _ready():
	updateUI()
	setUpPlayer()

func _on_finish_line_area_entered(area):
	var alien = area.get_parent()
	# An alien reached the end 
	if alien.has_method("iAmAlien"):
		alien.queue_free()
	# The player reached the end
	elif alien.has_method("iAmPlayer"):
		Global.whoWon = "Alien"
		var _level = get_tree().change_scene_to_file(endScreen)

func updateUI():
	shotsLabel.text = "Shots: " + str(shotsLeft)

func setUpPlayer():
	# Remve the current (alien) script and add the player script to the selected alien
	var playerScript = ResourceLoader.load("res://player.gd")
	match Global.characterSelected:
		1:
			alien1.set_script(playerScript)
			alien1._ready()
			alien1.set_process(true)
		2:
			alien2.set_script(playerScript)
			alien2._ready()
			alien2.set_process(true)
		3:
			alien3.set_script(playerScript)
			alien3._ready()
			alien3.set_process(true)
		4:
			alien4.set_script(playerScript)
			alien4._ready()
			alien4.set_process(true)
		5:
			alien5.set_script(playerScript)
			alien5._ready()
			alien5.set_process(true)
		6:
			alien6.set_script(playerScript)
			alien6._ready()
			alien6.set_process(true)
		7:
			alien7.set_script(playerScript)
			alien7._ready()
			alien7.set_process(true)
		8:
			alien8.set_script(playerScript)
			alien8._ready()
			alien8.set_process(true)
		9:
			alien9.set_script(playerScript)
			alien9._ready()
			alien9.set_process(true)
		10:
			alien10.set_script(playerScript)
			alien10._ready()
			alien10.set_process(true)
		_:
			print("ERROR: UNACCEPTABLE CHARACTER NUMBER \"" + str(Global.characterSelected) + "\" SELECTED")

func playShot():
	shotAudio.play()
