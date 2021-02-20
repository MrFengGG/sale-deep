class_name Movement extends Unit

var this : KinematicBody2D
#重力
var gravity : Vector2
#最大下落速度
var max_fall_velocity : float
#当前下落速度
var current_fall_velocity : Vector2
#当前速度
var velocity : Vector2 = Vector2.ZERO
#吸附速度
const snap : Vector2 = Vector2.DOWN * 128

export (float, 0, 1.0) var acceleration = 0.25

func force_by_gravity(_delta : float):
	if this.is_on_floor():
		current_fall_velocity = Vector2.ZERO
	else:
		current_fall_velocity = (current_fall_velocity + gravity).clamped(max_fall_velocity)

func force_by_input(_delta : float):
	pass
func _init():
	var _self = self
	this = _self

func _physics_process(delta):
	force_by_gravity(delta)
	force_by_input(delta)
	if velocity.length() > 0:
		velocity = this.move_and_slide_with_snap(velocity, snap, Vector2.UP, true)
	
