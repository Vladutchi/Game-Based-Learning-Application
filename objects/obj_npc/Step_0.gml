if position_meeting(mouse_x, mouse_y,id) and mouse_check_button_pressed(mb_left) and not instance_exists(obj_textbox){
	
	var _textbox = instance_create_depth(0,0,-9998,obj_textbox)
	add_dialogue(_textbox)
	
}




