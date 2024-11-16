if(room != rm_end){
	check_input_flag();
	check_sprite();
	if place_meeting(x ,y ,obj_enemy) or place_meeting(x, y, obj_hazzard){
		is_hit();
	}
}



