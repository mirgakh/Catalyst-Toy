extends Node2D


func _physics_process(delta):
	$CarrotText.text = ("= " + str(Global.numofcarrots))
