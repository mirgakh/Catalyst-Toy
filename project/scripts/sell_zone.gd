extends StaticBody2D


func _on_area_2d_body_entered(body):
	if body.has_method("sell"):
		var carrots = Global.numofcarrots
		var coins = Global.coins
		
		coins += carrots * 5
		
		carrots = 0
		
		Global.coins = coins
		Global.numofcarrots = carrots
