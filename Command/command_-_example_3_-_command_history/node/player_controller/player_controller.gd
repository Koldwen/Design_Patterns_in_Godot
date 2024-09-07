extends Control

# ========================================================
# Author: Koldwen
# Date: 2024-09-04
# License: GNU General Public License v3.0
# ========================================================

signal move_up
signal move_right
signal move_down
signal move_left
signal undo
signal redo
signal undo_all
signal redo_all
signal clear_history

func _on_move_up() -> void:
	move_up.emit()

func _on_move_right() -> void:
	move_right.emit()

func _on_move_down() -> void:
	move_down.emit()

func _on_move_left() -> void:
	move_left.emit()

func _on_undo() -> void:
	undo.emit()

func _on_redo() -> void:
	redo.emit()

func _on_undo_all() -> void:
	undo_all.emit()

func _on_redo_all() -> void:
	redo_all.emit()

func _on_clear_history() -> void:
	clear_history.emit()
