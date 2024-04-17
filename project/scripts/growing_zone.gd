extends StaticBody2D

var plant = Global.plantSelected
var plantGrowing = false
var plant_grown = false

func _physics_process(delta):
	if plantGrowing == false:
		plant = Global.plantSelected
		

func _on_area_2d_area_entered(area):
	if not plantGrowing:
		$CropSound.play()
		if plant == 1:
			plantGrowing = true
			$CarrotTimer.start()
			$plant.play("carrot")
		if plant == 2:
			plantGrowing = true
			$AppleTimer.start()
			$plant.play("apple")
		if plant == 3:
			plantGrowing = true
			$lettuceTimer.start()
			$plant.play("lettuce")
		if plant == 4:
			plantGrowing = true
			$cherryTimer.start()
			$plant.play("cherry")
			
	else:
		print("plant is already growing here")


func _on_carrot_timer_timeout():
	var carrot_plant = $plant
	if carrot_plant.frame == 0:
		carrot_plant.frame = 1
		$CarrotTimer.start()
	elif carrot_plant.frame == 1:
		carrot_plant.frame = 2
		plant_grown = true



func _on_apple_timer_timeout():
	var apple_plant = $plant
	if apple_plant.frame == 0:
		apple_plant.frame = 1
		$AppleTimer.start()
	elif apple_plant.frame == 1:
		apple_plant.frame = 2
		plant_grown = true

func _on_lettuce_timer_timeout():
	var lettuce_plant = $plant
	if lettuce_plant.frame == 0:
		lettuce_plant.frame = 1
		$lettuceTimer.start()
	elif lettuce_plant.frame == 1:
		lettuce_plant.frame = 2
		plant_grown = true

func _on_cherry_timer_timeout():
	var cherry_plant = $plant
	if cherry_plant.frame == 0:
		cherry_plant.frame = 1
		$cherryTimer.start()
	elif cherry_plant.frame == 1:
		cherry_plant.frame = 2
		plant_grown = true


func _on_area_2d_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		if plant_grown:
			$CropSound.play()
			if plant == 1:
				Global.numofcarrots += 1
				plantGrowing = false
				plant_grown = false
				$plant.play("None")
				
			if plant == 2:
				Global.numofapples += 1
				plantGrowing = false
				plant_grown = false
				$plant.play("None")
				
			if plant == 3:
				Global.numoflettuce += 1
				plantGrowing = false
				plant_grown = false
				$plant.play("None")
			
			if plant == 4:
				Global.numofcherries += 1
				plantGrowing = false
				plant_grown = false
				$plant.play("None")



