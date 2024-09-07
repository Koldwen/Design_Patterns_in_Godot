class_name Command extends Resource

# ========================================================
# Author: Koldwen
# Date: 2024-09-04
# License: GNU General Public License v3.0
# ========================================================

var _actor: Node2D

func _init(actor := _actor) -> void:
	self._actor = actor

func new(actor := _actor) -> Command:
	return Command.new(actor)

func do() -> Command:
	return self

func undo() -> Command:
	return self
