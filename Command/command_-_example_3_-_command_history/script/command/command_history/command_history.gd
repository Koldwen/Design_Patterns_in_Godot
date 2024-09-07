class_name CommandHistory extends RefCounted

# ========================================================
# Author: Koldwen
# Date: 2024-09-04
# License: GNU General Public License v3.0
# ========================================================

var _history: Array[Command] = []
var _index: int = -1

func do(command: Command) -> Command:
	_index += 1
	if _index < _history.size():
		_history = _history.slice(0, _index)
	_history.insert(_index, command)
	return command.do()

func undo() -> Command:
	if _index > -1 and !_history.is_empty():
		var undo_command = _history[_index].undo()
		_index -= 1
		return undo_command
	return null

func redo() -> Command:
	if _index < _history.size()-1:
		_index += 1
		return _history[_index].do()
	return null

func undo_all() -> Command:
	if _index > 0:
		var first_command = _history.front()
		while undo(): pass
		return first_command 
	return null

func redo_all() -> Command:
	if _index < _history.size()-1:
		var last_command = _history.back()
		while redo(): pass
		return last_command 
	return null

func clear() -> CommandHistory:
	_history.clear()
	_index = -1
	return self
