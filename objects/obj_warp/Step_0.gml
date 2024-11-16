if place_meeting(x ,y ,obj_player) {
	global.room = target_rm;
	obj_save_load.save();
	
	if target_rm == rm_end{
		target_x = 208;
		target_y = 208;
	}
	obj_warp.warp_player(target_rm, target_x, target_y);
}


