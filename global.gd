extends Node

# Movement constants
const TIME_BETWEEN_MOVES_LOWER_LIMIT = 0.1
const TIME_BETWEEN_MOVES_UPPER_LIMIT = 4.0
const MOVE_LENGTH_LOWER_LIMIT = 5
const MOVE_LENGTH_UPPER_LIMIT = 200
const ALIEN_MOVE_SPEED = 20

const SCOPE_MOVE_SPEED = 500
const TOTAL_SHOTS = 3

# Variables carried over between scene
var characterSelected = -1
var whoWon = "TO_BE_SET"
