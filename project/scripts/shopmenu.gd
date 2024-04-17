extends StaticBody2D

var item = 1

var itemPrices = [100,250]

var itemOwned = [false,false]

var price

func _ready():
	$icon.play("lettuce")
	item = 1
	
func _physics_process(delta):
	if self.visible == true:
		if item == 1:
			$icon.play("lettuce")
			$priceLabel.text = str(itemPrices[0])

		if item == 2:
			$icon.play("cherry")
			$priceLabel.text = str(itemPrices[1])
		
		


func _on_button_left_pressed():
	swap_item_back()
func _on_button_right_pressed():
	swap_item_forward()
func _on_buy_button_pressed():
	if item == 1:
		price = itemPrices[0]
		if Global.coins >= price:
			if itemOwned[0] == false:
				buy()
	
	elif item == 2:
		price = itemPrices[1]
		if Global.coins >= price:
			if itemOwned[1] == false:
				buy()

	
func swap_item_back():
	if item == 1:
		item = 2
	elif item == 2:
		item = 1

func swap_item_forward():
	if item == 1:
		item = 2
	elif item == 2:
		item = 1

func buy():
	Global.coins -= price
	$buySound.play()
	if item == 1:
		itemOwned[0] = true
	if item == 2:
		itemOwned[1] = true
