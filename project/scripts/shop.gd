extends StaticBody2D

func _ready():
	$shopmenu.visible = false
	
func _physics_process(delta):
	if $shopmenu.itemOwned[0] == true:
		$lettuce_seed.visible = true
	
func _on_area_2d_body_entered(body):
	if body.has_method("shop"):
		$shopmenu.visible = true


func _on_area_2d_body_exited(body):
	if body.has_method("shop"):
		$shopmenu.visible = false
