switch(room){
	
	case rm_2:{
		if(coins > 1 and slimes < 2){ // if level completion is imposible restart room
			var _death_event = instance_create_depth(0, 0, 0, obj_death_event);
			_death_event.initiate(PlayerDeathCause.SoftLock);
		}
		
	}break;
	
	case rm_3:{
		if(slimes == 3){ // if level completion is imposible restart room
			var _death_event = instance_create_depth(0, 0, 0, obj_death_event);
			_death_event.initiate(PlayerDeathCause.SoftLock);
		}
		
	}break;
	
	
	case rm_9:{
		if(hearts == 3 and not check_lvl_8(obj_for.n)){ // if level completion is imposible restart room
			var _death_event = instance_create_depth(0, 0, 0, obj_death_event);
			_death_event.initiate(PlayerDeathCause.SoftLock);
			obj_player.extra_hp = 0;
		}
	}break;
}

