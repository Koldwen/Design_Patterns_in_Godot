extends VBoxContainer

# ========================================================
# Author: Koldwen
# Date: 2024-09-04
# License: GNU General Public License v3.0
# ========================================================

signal do_next
signal do_last
signal do_all

var command_queue: Array[String] = []
@export var queue_label: Label

func _ready() -> void:
	_update_queue_label()

func _on_button_do_next_pressed() -> void:
	command_queue.pop_front()
	_update_queue_label()
	do_next.emit()

func _on_button_do_last_pressed() -> void:
	command_queue.pop_back()
	_update_queue_label()
	do_last.emit()

func _on_button_do_all_pressed() -> void:
	command_queue.clear()
	_update_queue_label()
	do_all.emit()

func _on_move_up() -> void:
	command_queue.append("Up")
	_update_queue_label()

func _on_move_right() -> void:
	command_queue.append("Right")
	_update_queue_label()

func _on_move_left() -> void:
	command_queue.append("Left")
	_update_queue_label()

func _on_move_down() -> void:
	command_queue.append("Down")
	_update_queue_label()

func _update_queue_label() -> void:
	queue_label.text = "Queue: %s" % str(command_queue)
