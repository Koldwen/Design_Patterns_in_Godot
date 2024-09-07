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

var command_queue: CommandQueue = CommandQueue.new()

func move_up() -> void:
	command_queue.append(move_up_command.new(self, distance))

func move_right() -> void:
	command_queue.append(move_right_command.new(self, distance))

func move_down() -> void:
	command_queue.append(move_down_command.new(self, distance))

func move_left() -> void:
	command_queue.append(move_left_command.new(self, distance))

func do_next() -> void:
	command_queue.do_next()

func do_last() -> void:
	command_queue.do_last()

func do_all() -> void:
	command_queue.do_all()
