value = 0;

function check_player_hp()
{
	if(obj_player.extra_hp < value){
		sprite_index = spr_no_life;
		
	}
	else{
		sprite_index = spr_life;
	}
}







