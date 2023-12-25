extends RigidBody2D

var bullet_speed = 4500

func _ready():
		apply_impulse(Vector2(bullet_speed, 0).rotated(rotation))
	



func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
