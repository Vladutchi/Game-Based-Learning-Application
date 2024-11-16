depth = -1;
move_direction = "down"
step = 2;
vertical_flag = true;
run_flag = false;

function moveslime(){
	
	if (run_flag == true) {
        if (vertical_flag == true) {
            if (place_meeting(x, y + (step * 4.75), obj_wall)) {
                run_flag = false;
            }
            y += step;
        } else {
            if (place_meeting(x + (step * 4.75), y, obj_wall)) {
                run_flag = false;
            }
            x += step;
        }
    } else {
        // Find the nearest grid position (divisible by 32)
        var _nearest_x = round(x / 32) * 32;
        var _nearest_y = round(y / 32) * 32;

        // Adjust the enemy's position to the nearest grid position
        x = _nearest_x;
        y = _nearest_y;
    }

}

function onspikes(){
	
	if place_meeting(x,y,obj_spikes)
		return true;
	else 
		return false;
}

function turnleft(){
	
	switch(move_direction){
		
		case "left":{
			move_direction = "down"
			vertical_flag = true
			 step *= -1;
		}break;
		
		case "down":{
			move_direction = "right"
			vertical_flag = false
		}break;
		
		case "right":{
			move_direction = "up"
			vertical_flag = true
			 step *= -1;
		}break;
		
		case "up":{
			move_direction = "left"
			vertical_flag = false
		}break;
	}
	
}










