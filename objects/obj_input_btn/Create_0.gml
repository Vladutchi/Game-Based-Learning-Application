//input_locked = false;
flag = false;

function add_to_list(){
	if(obj_player.input_locked == false){
		
		obj_run_btn.obj_count = ds_list_size(obj_run_btn.list_slots);
	
		if(obj_run_btn.obj_count < 10){		
			obj_run_btn.obj_count++;
			ds_list_add(obj_run_btn.list_slots,id);
		}
	}
}




