extends StaticBody2D


func _on_area_2d_body_entered(body):
	if body.has_method("sell"):
		var carrots = Global.numofcarrots
		var apples = Global.numofapples
		var lettuce = Global.numoflettuce
		var cherries = Global.numofcherries
		var coins = Global.coins
		
		coins += carrots * 8
		coins += apples * 12
		coins += lettuce * 15
		coins += cherries * 20
		
		carrots = 0
		apples = 0
		lettuce = 0
		cherries = 0
		
		Global.coins = coins
		Global.numofcarrots = carrots
		Global.numofapples = apples
		Global.numoflettuce = lettuce
		Global.numofcherries = cherries
