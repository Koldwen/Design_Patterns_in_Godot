extends Node2D

# ========================================================
# Author: Koldwen
# Date: 2024-09-04
# License: GNU General Public License v3.0
# ========================================================

@export_range(1, 10) var distance: int = 1

const DIRECTION_UP: Vector2 = Vector2(0, -1)
const DIRECTION_RIGHT: Vector2 = Vector2(1, 0)
const DIRECTION_DOWN: Vector2 = Vector2(0, 1)
const DIRECTION_LEFT: Vector2 = Vector2(-1, 0)

func move_up() -> void:
	MoveCommand.new(self, distance, DIRECTION_UP).do()

func move_right() -> void:
	MoveCommand.new(self, distance, DIRECTION_RIGHT).do()

func move_down() -> void:
	MoveCommand.new(self, distance, DIRECTION_DOWN).do()

func move_left() -> void:
	MoveCommand.new(self, distance, DIRECTION_LEFT).do()
