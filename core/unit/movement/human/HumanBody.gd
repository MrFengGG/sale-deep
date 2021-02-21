class_name HumanBody extends Node2D

onready var head = $Head
onready var body = $Body
onready var eye = $Eye
onready var hair = $Hair
onready var hand = $Hand
onready var hand_position = $HandPosition

var data : Dictionary

func wave_item():
	pass

func smash_item():
	pass

func stick_item():
	pass
	
func load_data(data : Dictionary):
	head.texture = load(data['head_texture'])
	head.modulate = load(data['head_color'])
	body.texture = load(data['body_texture'])
	body.modulate = load(data['body_color'])
	eye.texture = load(data['eye_texture'])
	eye.modulate = load(data['eye_color'])
	hair.texture = load(data['hair_texture'])
	hair.modulate = load(data['hair_color'])
	hand.texture = load(data['hand_texture'])
	hand.modulate = load(data['hand_color'])

func get_data() -> Dictionary:
	return data

