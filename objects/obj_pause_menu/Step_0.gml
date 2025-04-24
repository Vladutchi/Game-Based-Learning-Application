var _up_key = keyboard_check_pressed(ord("W"));
var _down_key = keyboard_check_pressed(ord("S"));

pos += _down_key - _up_key;
if(pos >= op_length) {pos = 0;}
if(pos < 0){pos = op_length - 1;}


// Selection
if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space)) {
	switch (pos) {
		case 0: // Resume
			instance_destroy();
			break;

		case 1: // Quit to Menu
			if not instance_exists(obj_menu_transition){
				instance_create_depth(0,0,-9999, obj_menu_transition);
				obj_menu_transition.target_rm = rm_title_screen;
			}
	}
}
