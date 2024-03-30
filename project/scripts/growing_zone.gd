extends StaticBody2D

var plant = Global.plantSelected
var plantGrowing = false
var plant_grown = false

func _physics_process(delta):
	if plantGrowing == false:
		plant = Global.plantSelected
		

func _on_area_2d_area_entered(area):
	if not plantGrowing:
		if plant == 1:
			plantGrowing = true
			$CarrotTimer.start()
			$plant.play("carrot")
			
	else:
		print("plant is already growing here")


func _on_carrot_timer_timeout():
	var carrot_plant = $plant
	if carrot_plant.frame == 0:
		plant_grown = true


func _on_area_2d_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		if plant_grown:
			if plant == 1:
				Global.numofcarrots += 1
				plantGrowing = false
				plant_grown = false
				$plant.play("None")
