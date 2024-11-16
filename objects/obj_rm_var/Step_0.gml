switch(room){
	
	case rm_2:{
		if(coins > 1 and slimes < 2){ // if level completion is imposible restart room
			obj_warp.warp_player(rm_2, obj_warp.target_x, obj_warp.target_y)
		}
		
	}break;
	
	case rm_3:{
		if(slimes == 3){ // if level completion is imposible restart room
			obj_warp.warp_player(rm_3, obj_warp.target_x, obj_warp.target_y)
		}
		
	}break;
	
	
	case rm_9:{
		if(hearts == 3 and not check_lvl_8(obj_for.n)){ // if level completion is imposible restart room
			obj_warp.warp_player(rm_9, obj_warp.target_x, obj_warp.target_y)
			obj_player.extra_hp = 0;
		}
	}break;
}

