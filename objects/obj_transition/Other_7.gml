room_goto(target_rm);
obj_player.x = target_x;
obj_player.y = target_y;

if(target_rm == rm_boss_10 and obj_player.extra_hp < 2)
	obj_player.extra_hp = 2;
	
image_speed = -1;






