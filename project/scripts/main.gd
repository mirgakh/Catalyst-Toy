extends Node2D


func _physics_process(delta):
	$Display/CarrotText.text = ("= " + str(Global.numofcarrots))
	$Display/appleText.text = ("= " + str(Global.numofapples))
	$Display/lettuceText.text = ("= " + str(Global.numoflettuce))
	$Display/cherryText.text = ("= " + str(Global.numofcherries))
	$Display/CoinText.text = ("= " + str(Global.coins))
