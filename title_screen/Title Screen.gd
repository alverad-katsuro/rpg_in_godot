extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Iniciar_Jogo_pressed():
	get_tree().change_scene("res://title_screen/menu_options/options_iniciar/IniciarJogo.tscn"); # Replace with function body.


func _on_Achievements_pressed():
	get_tree().change_scene("res://title_screen/menu_options/options_achievement/Achievements.tscn"); # Replace with function body.


func _on_Opes_pressed():
	get_tree().change_scene("res://title_screen/menu_options/options_options/Options.tscn"); # Replace with function body.
