extends Node2D


func _physics_process(delta):
	$Display/CarrotText.text = ("= " + str(Global.numofcarrots))
	$Display/CoinText.text = ("= " + str(Global.coins))
