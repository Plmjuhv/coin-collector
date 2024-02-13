extends CharacterBody2D

const SPEED = 100
var pushForce : float = 50.0

func _physics_process(_delta):
	velocity = velocity * 0.8
	
	if Input.is_key_pressed(KEY_LEFT):
		velocity.x += -SPEED
		
	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += SPEED
		
	if Input.is_key_pressed(KEY_UP):
		velocity.y += -SPEED
		
	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += SPEED
		
	for i in get_slide_collision_count():
		var c = get_slide_collision(i)
		if c.get_collider() is RigidBody2D:
			c.get_collider().apply_central_impulse(-c.get_normal() * pushForce)
	
	move_and_slide()
