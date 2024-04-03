extends StaticBody2D


func _on_area_2d_body_entered(body):
	if body.has_method("sell"):
		var carrots = Global.numofcarrots
		var apples = Global.numofapples
		var lettuce = Global.numoflettuce
		var coins = Global.coins
		
		coins += carrots * 5
		coins += apples * 8
		coins += lettuce * 10
		
		carrots = 0
		apples = 0
		lettuce = 0
		
		Global.coins = coins
		Global.numofcarrots = carrots
		Global.numofapples = apples
		Global.numoflettuce = lettuce