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

func _on_button_up_pressed() -> void:
	move_up.emit()

func _on_button_right_pressed() -> void:
	move_right.emit()

func _on_button_down_pressed() -> void:
	move_down.emit()

func _on_button_left_pressed() -> void:
	move_left.emit()
