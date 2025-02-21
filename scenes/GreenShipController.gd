extends RigidBody2D

var thrust = 20000  # Adjust speed as needed
var rotation_speed = 10000 # Adjust rotation speed

# Damp for anti sliding
func _ready() -> void:
	angular_damp = 10.0 
	linear_damp = 2.0  
	print("space")	

# Movement
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
		apply_central_force(-transform.y * thrust)
	if Input.is_action_pressed("ui_down"):
		apply_central_force(transform.y * thrust)
	if Input.is_action_pressed("ui_left"):
		apply_torque_impulse(-rotation_speed)
	if Input.is_action_pressed("ui_right"):
		apply_torque_impulse(rotation_speed)
