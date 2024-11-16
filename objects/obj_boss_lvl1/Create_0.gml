hp = 5;
distance_counter = 0;
move_direction = 0
step = 2;
event_inherited()

function enemy_attack(_x,_y){
	instance_create_depth(_x, _y , -99, obj_sphere_attack)
	
}

function move_enemy() {
    if (obj_run_btn.run_flag == true) {
        if (distance_counter >= 32 or distance_counter <= -32) {
			if(step < 0){
				move_direction++;
				if(move_direction > 3)
					move_direction = 0;
			}
			switch (move_direction) {
				case 0: //  up
					enemy_attack(x, y - 32);
					break;
				case 1: //  right
					enemy_attack(x + 32, y);
					break;
				case 2: // down
					enemy_attack(x, y + 32);
					break;
				case 3: // left
					enemy_attack(x - 32, y);
					break;
			}
			
			distance_counter = 0;
            step *= -1; // Reverse the step to move back
		}
	

        switch (move_direction) {
            case 0: // up
                y -= step;
				break;
            case 1: //  right
                x += step;
				break;
            case 2: // down
                y += step;
                break;
            case 3: // left
                x -= step;
                break;
        }
	

        distance_counter += step; // Increment the distance counter
    } else {
		var _round_distance = round(distance_counter / 32) * 32;
        var _round_x = round(x / 32) * 32;
        var _round_y = round(y / 32) * 32;

        // Adjust the enemy's position to the nearest grid position
        x = _round_x;
        y = _round_y;
		distance_counter = _round_distance;
    }
}