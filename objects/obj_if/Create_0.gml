text =""

function add_dialogue(_textbox){
		
	_textbox.add_text(text)
}

function is_hit(){
	switch(room){
		
		case rm_6:{
			
			if(obj_rm_var.slimes >= 3){
				
				instance_destroy(obj_lock)
			}
			else{
				
				instance_create_depth(32,96,-1,obj_slime)
			}
			
		}break;
		
		case rm_7:{
			
			if(obj_blueslime.onspikes() == true){
				
				instance_destroy(obj_lock)
			}
			else{
				
				obj_blueslime.turnleft();
			}
			
		}break;
		
		case rm_9:{
			
			if(instance_exists(obj_lock))
			
				if(obj_rm_var.hearts <= 2){
				
					obj_for.n += 2;
				}
				else{
				
					obj_for.n /= 2;	
				}
			
		}break;
	}
	
}