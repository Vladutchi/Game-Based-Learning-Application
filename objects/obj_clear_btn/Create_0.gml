stop_flag = false;

function clear_selected(){
	if(obj_run_btn.run_flag  == true){
		obj_clear_btn.stop_flag = true;
	}
	else{
		obj_run_btn.finish();
	}
}






