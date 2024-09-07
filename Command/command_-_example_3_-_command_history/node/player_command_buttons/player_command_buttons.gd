extends VBoxContainer

# ========================================================
# Author: Koldwen
# Date: 2024-09-04
# License: GNU General Public License v3.0
# ========================================================

signal undo
signal redo
signal undo_all
signal redo_all
signal clear_history

func _on_button_clear_pressed() -> void:
	clear_history.emit()

func _on_button_redo_all_pressed() -> void:
	redo_all.emit()

func _on_button_undo_all_pressed() -> void:
	undo_all.emit()

func _on_button_redo_pressed() -> void:
	redo.emit()

func _on_button_undo_pressed() -> void:
	undo.emit()
