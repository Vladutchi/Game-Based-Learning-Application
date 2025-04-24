if(room == target_rm and destroy_flag == false){
	restart_flag = true;
}

room_goto(target_rm);
obj_player.x = target_x;
obj_player.y = target_y;

obj_save_load.check_and_update_level_progress()

if(target_rm == rm_boss_10 and obj_player.extra_hp < 2)
	obj_player.extra_hp = 2;
	
image_speed = -1;
destroy_flag = true
alarm[0] = 1;






