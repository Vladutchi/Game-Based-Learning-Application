if place_meeting(x ,y ,obj_player) {
	if(array_get_index(global.level_list, room) != -1 and message_flag == false){ // level completion message
		var _textbox = instance_create_depth(0,0,-9998,obj_textbox)
		_textbox.textbox_height = 32 * 4;
		var _steps = obj_player.steps + 1;
		var _optimal = real(global.level_best[array_get_index(global.level_list, room)]);
		
		var _msg = "Level complete! You used [" + string(_steps) + "] steps. The optimal solution is [" + string(_optimal) + "].";
		if (_steps < _optimal) _msg += " Amazing! You beat the optimal!";
		else if (_steps == _optimal) _msg += " Perfect! You matched the optimal!";
		else _msg += " You can replay levels from the menu to try and match the optimal solution!";
		_textbox.add_text(_msg);

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


