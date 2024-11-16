if(verify_attack() == true){
	sprite_index = spr_attack_btn
	}
else{
	sprite_index = spr_attack_btn_lock
	}


if (flag == true)
{
	if(atk_range == 0){
		obj_run_btn.iterate();
	}

    if (vertical_flag == true){	
		
		if (not instance_exists(obj_slash) && atk_range != 0){	
			instance_create_depth(obj_player.x, obj_player.y + atk_range, -100, obj_slash);
			
			if(atk_range > 0)
				obj_slash.image_angle = 180;
		}	
    }
	
	else{
		
		if (not instance_exists(obj_slash) && atk_range != 0){	
			instance_create_depth(obj_player.x + atk_range ,obj_player.y, -100, obj_slash);
			
			if(atk_range < 0)
				obj_slash.image_angle = 90;
			else
				obj_slash.image_angle = 270;
			
		}
    }
}





