text =""
i = 1;
n = 4;
function add_dialogue(_textbox){
		
	_textbox.add_text(text)
}

function is_hit(){
	
	if(n > 1 and not instance_exists(obj_rain) and not obj_flower.bees){
		instance_create_depth(192,96,-5,obj_rain)
		i++;
	}
}