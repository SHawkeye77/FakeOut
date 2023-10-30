extends CharacterBody2D

@onready var area2D = $Area2D
@onready var world = get_tree().get_first_node_in_group("world")
const endScreen = "res://screens/end_screen.tscn"
var shots = Global.TOTAL_SHOTS

func _process(delta):
	movement()
	checkForFiring()

# Move our character
func movement():
	# Calculates movement based on user input
	var xMov = Input.get_action_strength("right") - Input.get_action_strength("left")
	var yMov = Input.get_action_strength("down") - Input.get_action_strength("up")
	var mov = Vector2(xMov, yMov)
	
	# Moving the player
	velocity = mov.normalized() * Global.SCOPE_MOVE_SPEED

	# Clamping the position to the screen
	if position.x < 0:
		position.x = 0
	if position.x > get_viewport_rect().size.x:
		position.x = get_viewport_rect().size.x
	if position.y > get_viewport_rect().size.y:
		position.y = get_viewport_rect().size.y
	if position.y < 0:
		position.y = 0
	
	move_and_slide()

func checkForFiring():
	if Input.is_action_just_pressed("enter"):
		world.playShot()
		world.shotsLeft -= 1
		world.updateUI()
		var overlappingAreas = area2D.get_overlapping_areas()
		if overlappingAreas.size() > 0:
			for area in overlappingAreas:
				if area != self:
					# If it hits an alien, destroy it
					var alien = area.get_parent()
					if alien.has_method("iAmAlien"):
						alien.queue_free()
					# If it hits the player, 
					elif alien.has_method("iAmPlayer"):
						Global.whoWon = "Sniper"
						var _level = get_tree().change_scene_to_file(endScreen)
		if world.shotsLeft == 0:
			Global.whoWon = "Alien"
			var _level = get_tree().change_scene_to_file(endScreen)
		
