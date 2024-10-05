extends CharacterBody3D


@export var SPEED = 5.0
@export var JUMP_VELOCITY = 4.5


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	if Input.is_action_just_pressed("left"):
		print("left")
		rotate(Vector3.UP,90)
		velocity = Vector3.ZERO
	if Input.is_action_just_pressed("right"):
		print("right")
		rotate(Vector3.UP,-90)
		velocity = Vector3.ZERO

	velocity.z = SPEED

	move_and_slide()
	
	
