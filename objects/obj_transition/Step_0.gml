if( room == target_rm and 
	obj_player.x == target_x and
	obj_player.y == target_y and 
	image_index < 1 and 
	(not instance_exists(obj_questionbox))){
		
				obj_player.hp = 1;
				instance_destroy();
	
	}






