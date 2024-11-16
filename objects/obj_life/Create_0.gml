value = 1;

function check_player_hp()
{
	if(obj_player.hp < value){
		sprite_index = spr_no_life;
		
}
	else{
		sprite_index = spr_life;
	}
}







