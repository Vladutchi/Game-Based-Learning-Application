if (keyboard_check_pressed(ord("F")) or keyboard_check_pressed(vk_f11)) {
    var is_fullscreen = window_get_fullscreen();
    window_set_fullscreen(!is_fullscreen);
}

if (keyboard_check_released(vk_escape) 
    and room != rm_title_screen 
    and instance_exists(obj_player)){
		if(not instance_exists(obj_pause_menu) and obj_player.input_locked == false) {
			instance_create_depth(0, 0, -9998, obj_pause_menu);
		}else if (instance_exists(obj_pause_menu)){
			instance_destroy(obj_pause_menu)
		}
	}


