if (place_meeting(x, y, obj_player)){
    obj_player.extra_hp++;
	
	if(obj_player.extra_hp > 3){
		obj_player.extra_hp = 3 
		}
		
	instance_destroy();
}