extends Panel

func _ready():
	if(get_parent().get_parent().get_parent().get_parent().characterUnlocked["male2"]):
		get_node("Panel").visible = false;
		get_node("Panel2").visible = false;
		get_node("Panel3").visible = true;
		get_node("m1su").show_behind_parent = false;

func _on_Buy_mouse_entered():
	get_parent().get_parent().get_node("Panel4/TextAd").bbcode_text = "[center]ARE YOU SURE THAT YOU WANT TO UNLOCK [u][color=red]'RUBEN'[/color][/u] SKIN for 7500 points?[/center]"
	get_parent().get_parent().get_node("Panel4/AnimationPlayer").play("PanelOut");
	get_parent().get_parent().get_parent().currentCharacter = "male2";

func _on_select_mouse_entered():
	get_node("Panel3/RichTextLabel").bbcode_text = "[center]SELECTED[/center]";
	get_parent().get_parent().get_parent().get_parent().infoDict["skin"] = "male2";
	get_parent().get_parent().get_parent().get_parent().infoDict["skinGender"] = 0;

func _on_select_mouse_exited():
	get_node("Panel3/RichTextLabel").bbcode_text = "[center]SELECT[/center]";
