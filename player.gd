extends Node

@onready var animatedSprite2D = $AnimatedSprite2D

func _ready():
	pass # NOTE: This needs to be here for setup purposes

func _process(delta):
	movement(delta)

# Move our character
func movement(delta):
	# Calculates movement based on user input
	var xMov = Input.get_action_strength("alien_player_move")
	
	# Flipping sprite based on left/right movement
	if xMov > 0:
		self.position.x += delta * Global.ALIEN_MOVE_SPEED
		animatedSprite2D.play("move")
		return

	animatedSprite2D.stop()

func iAmPlayer():
	pass
