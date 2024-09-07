class_name MoveCommand extends Command

# ========================================================
# Author: Koldwen
# Date: 2024-09-04
# License: GNU General Public License v3.0
# ========================================================

const _STEP_LENGTH: int = 16
	
@export var _direction: Vector2 = Vector2(0, 0)
@export_range(0, 100) var _distance: int = 1

var _previous_position

func _init(actor := _actor, distance := _distance, direction := _direction):
	super(actor)
	self._distance = distance
	self._direction = direction
	
	if actor:
		_previous_position = actor.position

func new(actor := _actor, distance := _distance, direction := _direction) -> MoveCommand:
	return MoveCommand.new(actor, distance, direction)

func do() -> Command:
	if _actor:
		_previous_position = _actor.position
		_actor.position += _STEP_LENGTH*_distance*_direction
	return self

func undo() -> Command:
	if _actor:
		_actor.position = _previous_position
	return self