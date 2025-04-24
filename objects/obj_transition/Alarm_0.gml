if(restart_flag and instance_exists(obj_textbox)){
	with (obj_textbox){ instance_destroy(); } // destroy all instances
}