if position_meeting(mouse_x, mouse_y,id) and mouse_check_button_pressed(mb_left) and not instance_exists(obj_textbox){
	var _textbox = instance_create_depth(0,0,-9998,obj_textbox)
	add_dialogue(_textbox);
}

switch(room){
	
	case rm_1:{
		if obj_rm_var.slimes > 1 {
			instance_destroy();
		}
	}break;
	
	case rm_2:{
		if obj_rm_var.coins >= 1 {
			if id == inst_5C07A2D5
				instance_destroy();
		}
		if obj_rm_var.coins < obj_rm_var.slimes {
			if id == inst_24110ACD
				instance_destroy();
		}
		if obj_rm_var.slimes == 3 {
			if id == inst_370C4D90
				instance_destroy();
		}
		
	}break;
	
	case rm_3:{
		if obj_rm_var.slimes * 2 != 0{
			if id == inst_609798A8
				instance_destroy();
		}
		if obj_rm_var.slimes / 2 == obj_rm_var.coins - 3 {
			if id == inst_6B9FF291
				instance_destroy();
		}
		
	}break;
	
	case rm_4:{
		if obj_rm_var.coins == 2 or obj_rm_var.slimes == 2{
				instance_destroy(inst_52350DE9);
		}
		if not(obj_rm_var.hearts == 2) and obj_rm_var.coins >= 2 {
				instance_destroy(inst_5FC49ED2);
		}
	}break;
	
	case rm_8:{
		if obj_rm_var.coins == 3{
				instance_destroy();
		}
	}break;
	
	case rm_boss_10:{
		if not instance_exists(obj_boss){
				instance_destroy();
		}
		
	}break;
}





