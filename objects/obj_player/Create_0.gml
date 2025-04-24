input_locked = false;
depth = -3; //draw player on top


hp = 1;
extra_hp = 0;
invincibility = false;
hit_x = 0
hit_y = 0

function is_hit(_playerDeathCause = PlayerDeathCause.EnemyHit)
{	
	if(invincibility == false){
		obj_rm_var.hearts--;
			if(extra_hp > 0){
				extra_hp--;
				invincibility = true;
				hit_x = round((x - 16) / 32) * 32 + 16;
				hit_y = round((y - 16) / 32) * 32 + 16;
				
			}
			else{
				hp--;
				if hp == 0{
						var _death_event = instance_create_depth(0, 0, 0, obj_death_event);
						_death_event.initiate(_playerDeathCause);
					}
				}
	}
}

function check_sprite(){
	if invincibility == true{
		sprite_index = spr_player_shade;
	}
	if abs(x - hit_x) >= 32 or abs(y - hit_y) >= 32 //check if the player has moved at least one square after getting hit
	{
		sprite_index = spr_player;
		invincibility = false;
	}
}

function check_input_flag(){
	if (obj_run_btn.run_flag == true or instance_exists(obj_transition)
	or instance_exists(obj_menu_transition) or instance_exists(obj_textbox)
	or instance_exists(obj_pause_menu)){
		input_locked = true
	}
	else{
		input_locked = false
	}
}
