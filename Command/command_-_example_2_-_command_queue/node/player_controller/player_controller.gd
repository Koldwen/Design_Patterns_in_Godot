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
signal do_next
signal do_last
signal do_all

func _on_move_up() -> void:
	move_up.emit()

func _on_move_right() -> void:
	move_right.emit()

func _on_move_down() -> void:
	move_down.emit()

func _on_move_left() -> void:
	move_left.emit()

func _on_do_next() -> void:
	do_next.emit()

func _on_do_last() -> void:
	do_last.emit()

func _on_do_all() -> void:
	do_all.emit()
