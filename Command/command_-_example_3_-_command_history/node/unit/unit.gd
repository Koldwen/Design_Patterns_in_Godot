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

var command_history: CommandHistory = CommandHistory.new()

func move_up() -> void:
	command_history.do(move_up_command.new(self, distance))

func move_right() -> void:
	command_history.do(move_right_command.new(self, distance))

func move_down() -> void:
	command_history.do(move_down_command.new(self, distance))

func move_left() -> void:
	command_history.do(move_left_command.new(self, distance))

func undo() -> void:
	command_history.undo()

func redo() -> void:
	command_history.redo()

func undo_all() -> void:
	command_history.undo_all()

func redo_all() -> void:
	command_history.redo_all()

func clear_history() -> void:
	command_history.clear()
