extends Node2D

# ========================================================
# Author: Koldwen
# Date: 2024-09-04
# License: GNU General Public License v3.0
# ========================================================

@export_range(1, 10) var distance: int = 1

@export var move_up_command: MoveCommand
@export var move_right_command: MoveCommand
@export var move_down_command: MoveCommand
@export var move_left_command: MoveCommand

func _ready() -> void:
	move_up_command = move_up_command.new(self, distance)
	move_right_command = move_right_command.new(self, distance)
	move_down_command = move_down_command.new(self, distance)
	move_left_command = move_left_command.new(self, distance)

func move_up() -> void:
	move_up_command.do()

func move_right() -> void:
	move_right_command.do()

func move_down() -> void:
	move_down_command.do()

func move_left() -> void:
	move_left_command.do()
