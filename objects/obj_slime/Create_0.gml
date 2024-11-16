event_inherited();
hp = 1;
depth = -1

vertical_flag = false;
step = 2;

function move_enemy() {
    if (obj_run_btn.run_flag == true) {
        if (vertical_flag == true) {
            if (place_meeting(x, y + (step * 4.75), obj_wall)) {
                step *= -1;
            }
            y += step;
        } else {
            if (place_meeting(x + (step * 4.75), y, obj_wall)) {
                step *= -1;
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
