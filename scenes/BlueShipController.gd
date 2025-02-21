extends RigidBody2D

var thrust = 20000 
var rotation_speed = 10000 

# Damp for anti sliding
func _ready() -> void:
	angular_damp = 10.0 
	linear_damp = 2.0  
	print("space")	

# Movement
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("w"):
		apply_central_force(-transform.y * thrust)
	if Input.is_action_pressed("s"):
		apply_central_force(transform.y * thrust)
	if Input.is_action_pressed("a"):
		apply_torque_impulse(-rotation_speed)
	if Input.is_action_pressed("d"):
		apply_torque_impulse(rotation_speed)
