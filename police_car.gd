extends CharacterBody3D

const speed = 5.0
const rotate_speed = 5.0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta;
	
	# Move transform of player forward at speed const
	transform.basis.z * speed;
	
	# Get the input direction (-1 / 0 / 1)
	var input_direction := Input.get_axis("GoLeft", "GoRight");
	# Rotate at Y to input direction and normalized 
	rotate_y(input_direction * delta * rotate_speed);
	
	move_and_slide();
	
