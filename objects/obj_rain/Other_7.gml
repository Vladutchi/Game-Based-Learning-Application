obj_flower.image_index++;

if(obj_for.i <= obj_for.n){
	
	obj_for.i++;
	instance_create_depth(192,96,-5,obj_rain)
	instance_destroy();
	
}
else{
	
	obj_for.i = 1;
	
	if(obj_flower.image_index == 3){
		obj_flower.active = true;
		obj_flower.bees = true;
	}
	else if(obj_flower.image_index != 0){
		
		obj_flower.active = true;
	}
	
	instance_destroy();
}






