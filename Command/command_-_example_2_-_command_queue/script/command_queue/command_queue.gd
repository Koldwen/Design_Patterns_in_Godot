class_name CommandQueue extends RefCounted

# ========================================================
# Author: Koldwen
# Date: 2024-09-04
# License: GNU General Public License v3.0
# ========================================================

var _queue: Array[Command] = []

func do_next() -> Command:
	if not _queue.is_empty():
		return _queue.pop_front().do()
	return null

func do_last() -> Command:
	if not _queue.is_empty():
		return _queue.pop_back().do()
	return null

func do_all() -> Command:
	if not _queue.is_empty():
		var last_command = _queue.back()
		while do_next(): pass
		return last_command
	return null

func append(command: Command) -> CommandQueue:
	_queue.append(command)
	return self

func clear() -> CommandQueue:
	_queue.clear()
	return self
