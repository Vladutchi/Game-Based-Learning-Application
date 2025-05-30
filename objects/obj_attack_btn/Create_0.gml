event_inherited();
atk_range = 0;
vertical_flag = false;

function verify_attack() {
	if(obj_player.input_locked == false){
		var _list_size = ds_list_size(obj_run_btn.input_list);
		if (_list_size > 0) {
			var _obj_last = ds_list_find_value(obj_run_btn.input_list, _list_size - 1);
			if (object_is_ancestor(_obj_last.object_index, obj_movement_btn)) {
				return true;
			}
		}
	}
	return false;
}
