extends CharacterBody2D

var _smoothed_mouse_pos: Vector2


func _physics_process(_delta) -> void:
	_smoothed_mouse_pos = lerp(_smoothed_mouse_pos, get_global_mouse_position(), 0.3)
	look_at(_smoothed_mouse_pos)
