timer = 49;
active = false;
bees = false;
function ungrow(){
	if(active){
		timer--;
		if(timer == 0){
			timer = 49;
			active = false;
			if(bees){
				instance_create_depth(192,96,-6,obj_bees)
				instance_destroy(obj_lock)
			}
			else{
				image_index = 0;
			}
		}
	}

}





