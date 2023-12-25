extends Sprite2D

var can_fire = true
var bullet = preload("res://bullet.tscn")
	
	
func _physics_process(_delta):
	if Input.is_action_just_pressed("Fire") and can_fire:
		var Bullet_instance = bullet.instantiate()
		Bullet_instance.position =  $Marker2D.get_global_position()
		Bullet_instance.rotation = get_angle_to(get_global_mouse_position())
		get_parent().add_child(Bullet_instance)
		can_fire = false
		await get_tree().create_timer(0.3).timeout
		can_fire = true
