extends KinematicBody2D


enum States {
	IDLE = 0,
	FLY = 1,
	FALL = 2,
}

onready var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
onready var sprite_back = $Cback
onready var sprite_front = $front
onready var sprite_right = $right

var speed = Vector2(120.0, 360.0)
var velocity = Vector2.ZERO
var falling_slow = false
var falling_fast = false
var no_move_horizontal_time = 0.0

func _ready():
	$AnimationTree.active = true
	$AnimationPlayer.active = true


func _physics_process(delta):
	velocity.y = (Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down")) * speed.x
	if Input.is_action_pressed("ui_down"):
		velocity.y *= 0.2
	if Input.is_action_pressed("ui_up"):
		velocity.y *= -0.2
	if velocity.y == 0:
		$AnimationTree["parameters/state/current"].g
	if velocity.y > 0:
		sprite_back.visible = false
		sprite_front.visible = true
		sprite_right.visible = false
	if velocity.y < 0:
		sprite_back.visible = true
		sprite_front.visible = false
		sprite_right.visible = false
	if velocity.y > 0:
		$AnimationTree["parameters/state/current"] = States.FALL
	else:
		$AnimationTree["parameters/state/current"] = States.FLY
