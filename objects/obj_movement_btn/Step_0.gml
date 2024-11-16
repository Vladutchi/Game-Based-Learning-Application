/// @description move
function send_attack_direction(){
		obj_attack_btn.vertical_flag = vertical_flag;
		obj_attack_btn.atk_range = distance;
}

if(flag == true)
{

	if(vertical_flag == true)
	{
		if( not place_meeting( obj_player.x - 16, obj_player.y + distance - 16, obj_wall )){
			obj_player.y += step;
			distance -= step;	
		}
		else{
			distance = aux;
			obj_run_btn.iterate();
		}
	}
	else{
		if( not place_meeting( obj_player.x  + distance - 16, obj_player.y - 16, obj_wall )){
				obj_player.x += step;
				distance -= step;	
		}
		else{
			distance = aux;
			obj_run_btn.iterate();
		}
	
	}
	
	
	if( distance == 0 ){
		distance = aux;
		send_attack_direction();
		obj_player.check_sprite();
		obj_run_btn.iterate();
	}
}




