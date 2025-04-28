if place_meeting(x ,y ,obj_player) {
	if(array_get_index(global.level_list, room) != -1 and message_flag == false){
		var _textbox = instance_create_depth(0,0,-9998,obj_textbox)
		_textbox.add_text("Level complete! Total steps: [" + string(obj_player.steps + 1) + "].")
		message_flag = true;
		obj_clear_btn.clear_selected();
	}
	if( not instance_exists(obj_textbox)){
		global.room = target_rm;
		obj_save_load.save();
	
		if target_rm == rm_end{
			target_x = 208;
			target_y = 208;
		}
		obj_warp.warp_player(target_rm, target_x, target_y);
	}
}


