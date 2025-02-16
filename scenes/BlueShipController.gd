extends RigidBody2D

var thrust = 20000  # Adjust speed as needed
var rotation_speed = 10000 # Adjust rotation speed


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	angular_damp = 10.0 
	linear_damp = 2.0  # Increase this to make rotation more rigid
	print("space")	

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("w"):
		apply_central_force(-transform.y * thrust)
	if Input.is_action_pressed("s"):
		apply_central_force(transform.y * thrust)
	if Input.is_action_pressed("a"):
		apply_torque_impulse(-rotation_speed)
	if Input.is_action_pressed("d"):
		apply_torque_impulse(rotation_speed)
