extends Area2D


var active=false

func _ready():
	connect("body_entered", self, 'on_NPC_body_entered')
	connect("body_exited", self, 'on_NPC_body_exited')
	
func _process(delta):
	$DialogIcon.visible=active
	
func _input(event):
	if get_node_or_null('DialogNode')==null:
		if event.is_action_pressed("interact") and active:
			get_tree().paused=true
			var dialog=Dialogic.start('timeline-1')
			dialog.pause_mode=Node.PAUSE_MODE_PROCESS
			dialog.connect('timeline_end',self,'unpause')
			add_child(dialog)

func unpause(timeline_name):
	get_tree().paused = false

func on_NPC_body_entered(body):
	if body.name=='Player':
		active=true
		
func on_NPC_body_exited(body):
	if body.name=='Player':
		active=false
