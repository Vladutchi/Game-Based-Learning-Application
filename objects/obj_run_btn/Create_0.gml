
run_flag  = false;
list_slots = ds_list_create();
obj_count = 0;
iterator = 0;

function start(){
	if(obj_count > 0){
		run_flag = true;
		next();
	}
}

function next(){
	var _obj_next = ds_list_find_value(list_slots, iterator);
	if(obj_clear_btn.stop_flag == false){
		_obj_next.flag = true;
	}
	else{
		finish();
	}
}

function finish(){
	obj_attack_btn.atk_range = 0;
	iterator = 0;
	obj_count = 0;
	ds_list_clear(list_slots);
	run_flag  = false;
	obj_clear_btn.stop_flag = false;
}

function iterate(){
	var _obj_this = ds_list_find_value(list_slots, iterator);
	_obj_this.flag = false;
	iterator++;	
	//check if there are more objects
	if(obj_run_btn.iterator < obj_run_btn.obj_count){
			obj_run_btn.next();		
			}
	else{
		obj_run_btn.finish();	
		}
}











