extends Node

@onready var animatedSprite2D = $AnimatedSprite2D
@onready var timeBeforeNextMove = get_node("%TimeBeforeNextMove")
var rng = RandomNumberGenerator.new()
var targetXPosition = -1
var moving = false

func _ready():
	calculateNextMove()

func _process(delta):
	# If in the process of moving to the next position, move in that direction
	if moving:
		if self.position.x >= targetXPosition:
			moving = false
			calculateNextMove()
		else:
			self.position.x += delta * Global.ALIEN_MOVE_SPEED
			animatedSprite2D.play("move")
			return

	animatedSprite2D.stop()

func calculateNextMove():
	# Getting a random wait time for our next move
	var t = rng.randf_range(Global.TIME_BETWEEN_MOVES_LOWER_LIMIT, Global.TIME_BETWEEN_MOVES_UPPER_LIMIT)
	# Setting the clock to wait for our next move
	timeBeforeNextMove.wait_time = t
	timeBeforeNextMove.start()

func _on_time_before_next_move_timeout():
	# Getting a random distance to move in pixels
	var d = rng.randi_range(Global.MOVE_LENGTH_LOWER_LIMIT, Global.MOVE_LENGTH_UPPER_LIMIT)
	targetXPosition = self.position.x + d
	moving = true

func iAmAlien():
	pass
