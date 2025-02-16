extends RigidBody2D

var thrust = 20000  # Adjust speed as needed
var rotation_speed = 10000 # Adjust rotation speed


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	angular_damp = 10.0 
	linear_damp = 2.0  # Increase this to make rotation more rigid
	print("space")	

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
		apply_central_force(-transform.y * thrust)
	if Input.is_action_pressed("ui_down"):
		apply_central_force(transform.y * thrust)
	if Input.is_action_pressed("ui_left"):
		apply_torque_impulse(-rotation_speed)
	if Input.is_action_pressed("ui_right"):
		apply_torque_impulse(rotation_speed)
