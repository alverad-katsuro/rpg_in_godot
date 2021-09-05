extends Node2D

onready var bodySprite = $Composicao/Body/Body_clothes
onready var chairSprite = $Composicao/Body/head/chair
onready var helmprite = $Composicao/Body/head/chair/helm
onready var armLeftSprite = $Composicao/Body/arm_l/Left_Arm_clothes
onready var handLeftSprite = $Composicao/Body/arm_l/hand_l/left_hand_01
onready var shieldSprite = $Composicao/Body/arm_l/hand_l/Shield
onready var legLeftSprite = $Composicao/Body/leg_l/Left_Shoes
onready var armRightSprite = $Composicao/Body/arm_r/roupa
onready var handRightSprite = $Composicao/Body/arm_r/hand_r/right_hand_01
onready var swordSprite = $Composicao/Body/arm_r/hand_r/Sword
onready var legRightSprite = $Composicao/Body/leg_r/Right_Shoes

const composite_sprites = preload("res://assetes/warrior/front/roupas/swuit_roupa.gd")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var curr_body: int = 0 
var curr_helm: int = 0 
var curr_sword: int = 0 
var curr_shield: int = 0 

# Called when the node enters the scene tree for the first time.
func _ready():
	bodySprite.texture = composite_sprites.bodySprite_sheet[curr_body]
	helmprite.texture = composite_sprites.helmSprite_sheet[curr_helm]
	swordSprite.texture = composite_sprites.swordSprite_sheet[curr_sword]
	shieldSprite.texture = composite_sprites.shieldSprite_sheet[curr_shield]


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_escudo_pressed():
	curr_shield = (curr_shield + 1) % composite_sprites.shieldSprite_sheet.size()
	shieldSprite.texture = composite_sprites.shieldSprite_sheet[curr_shield]

func _on_espada_pressed():
	curr_sword = (curr_sword + 1) % composite_sprites.shieldSprite_sheet.size()
	swordSprite.texture = composite_sprites.swordSprite_sheet[curr_sword]

func _on_elmo_pressed():
	curr_helm = (curr_helm + 1) % composite_sprites.shieldSprite_sheet.size()
	helmprite.texture = composite_sprites.helmSprite_sheet[curr_helm]

func _on_roupa_pressed():
	curr_body = (curr_body + 1) % composite_sprites.shieldSprite_sheet.size()
	bodySprite.texture = composite_sprites.bodySprite_sheet[curr_body]
