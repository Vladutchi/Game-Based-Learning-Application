event_inherited();
hp = 10;
flag = true;
depth = -5;
step = 2;
move_direction = 0; // 0: down right, 1: down left, 2: left up, 3: right up
distance_counter = 0; // Counter for tracking the distance
diagonal_distance = 2 * 32; // Distance to move diagonally (3 squares)
lerp_speed = 0.3; // Adjust this value to control the smoothness of movement

function move_enemy() {
	
	
    if (flag == true) {
        switch (move_direction) {
            case 0: // down right
                x += step;
                y += step;
                break;
            case 1: // down left
                x -= step;
                y += step;
                break;
            case 2: // left up
                x -= step;
                y -= step;
                break;
            case 3: // right up
                x += step;
                y -= step;
                break;
        }
		
        distance_counter += step; // Increment the distance counter
        if (distance_counter >= diagonal_distance) {
            distance_counter = 0; // Reset the distance counter
            move_direction++; // Change direction
            if (move_direction > 3) {
                move_direction = 0; // Reset direction to down right after completing all directions
				if(obj_rm_var.coins == 3)
					flag = false
            }
        }	
    } 
	else {
        // If the enemy stops moving, align its position with the nearest grid position
        var _target_x = round(x / 32) * 32;
        var _target_y = round(y / 32) * 32;
		var _counter = round(distance_counter / 32) * 32;

        x = lerp(x, _target_x, lerp_speed);
        y = lerp(y, _target_y, lerp_speed);
		distance_counter = _counter;
    }
}




