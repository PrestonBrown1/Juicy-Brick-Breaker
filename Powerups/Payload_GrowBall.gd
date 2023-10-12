extends Node2D

var type = "grow_ball"
var tween

func _ready():
	$Timer.start()
	var Ball_Container = get_node_or_null("/root/Game/Ball_Container")
	if Ball_Container != null:
		for c in Ball_Container.get_children():			
			c.call_deferred("change_size", Vector2(.5,.5))
			#tween = create_tween()
			#tween.tween_property(c, "change_size", Vector2(.5, .5), .5)

func payload():
	pass
	
func _on_Timer_timeout():
	print("timeout")
	var Ball_Container = get_node_or_null("/root/Game/Ball_Container")
	if Ball_Container != null:
		for c in Ball_Container.get_children():
			#print("Ball size")
			c.call_deferred("change_size", Vector2(.1,.1))
			#tween = create_tween()
			#tween.tween_property(c, "change_size", Vector2(.1, .1), .5)
	queue_free()
