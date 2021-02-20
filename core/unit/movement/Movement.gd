class_name Movement extends Unit

var this : KinematicBody2D
#重力
var gravity : Vector2
#当前速度
var velocity : Vector2 = Vector2.ZERO
export (float, 0, 1.0) var acceleration = 0.25

func _init():
	var _self = self
	this = _self

func _process(delta):
	if !this.is_on_floor():
		velocity += gravity
	
