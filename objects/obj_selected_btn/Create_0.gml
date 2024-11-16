function display_selected(){
	var _list_size = ds_list_size(obj_run_btn.list_slots);
    if (_list_size > list_index) {
		
        var _slot = ds_list_find_value(obj_run_btn.list_slots, list_index)
		
		if (_slot.object_index == obj_attack_btn.object_index) {
			if(_slot.object_index.flag == true and obj_run_btn.iterator == list_index){
				sprite_index = spr_run_attack;
			}
			else{
				sprite_index = spr_selected_attack;
			}
		}
        
		if (_slot.object_index == obj_up_btn.object_index) {
			if(_slot.object_index.flag == true and obj_run_btn.iterator == list_index){
				sprite_index = spr_run_up;
			}
			else{
				sprite_index = spr_selected_up;
			}
        }
		
		if (_slot.object_index == obj_down_btn.object_index) {
			if(_slot.object_index.flag == true and obj_run_btn.iterator == list_index){
				sprite_index = spr_run_down;
			}
			else{
				sprite_index = spr_selected_down;
			}
        }
		
		if (_slot.object_index == obj_left_btn.object_index) {
			if(_slot.object_index.flag == true and obj_run_btn.iterator == list_index){
				sprite_index = spr_run_left;
			}
			else{
				sprite_index = spr_selected_left;
			}
        }
		
		if (_slot.object_index == obj_right_btn.object_index) {
			if(_slot.object_index.flag == true and obj_run_btn.iterator == list_index){
				sprite_index = spr_run_right;
			}
			else{
				sprite_index = spr_selected_right;
			}
        }

    }
	else{
		sprite_index = spr_selected_btn;
	}
}





