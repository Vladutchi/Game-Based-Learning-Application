var _pause = keyboard_check_pressed(vk_escape);

if(room != rm_end){
	check_input_flag();
	check_sprite();
	if place_meeting(x ,y ,obj_enemy) or place_meeting(x, y, obj_hazzard){
		is_hit();
	}
}else if position_meeting(mouse_x, mouse_y,id) and mouse_check_button_pressed(mb_left){
	var _textbox = instance_create_depth(0,0,-9998,obj_textbox)
		_textbox.add_text("Wait.. I can talk!?")
}



