var _up_key = keyboard_check_pressed(ord("W"));
var _down_key = keyboard_check_pressed(ord("S"));
var _accept_key = keyboard_check_pressed(vk_space);
pos += _down_key - _up_key;

if(pos >= op_length) {pos = 0;}
if(pos < 0){pos = op_length - 1;}

if _accept_key{
	switch(pos){
		case 0:
			if not instance_exists(obj_transition){	
				global.room = rm_hub_lvl1;
				obj_save_load.load();
				instance_create_depth(0,0,-9999,obj_menu_transition);
			}
			break;
		case 1:
			if not instance_exists(obj_transition){	
				global.room = rm_hub_lvl1;
				obj_save_load.save();
				instance_create_depth(0,0,-9999,obj_menu_transition);
			}
			break;
		case 2:
			game_end();
			break;
	
	}
}
