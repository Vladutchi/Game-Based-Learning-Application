level_names = [
    "1. Variables",
    "2. Comparison",
    "3. Arithmetic",
    "4. Logic",
    "5. Quiz",
    "6. If Statement",
    "7. While Loop",
    "8. Repeat Until",
    "9. For Loop",
    "10. Boss Battle"
]

unlocked_levels = array_create(array_length(global.level_list), false);
obj_save_load.load_levels();

for(var _i = 0; _i < 10 ; _i++){
	unlocked_levels[_i] = true;
}

// Position 0 will be the "Back" button
level_pos = 0;
visible_count = 4;
scroll_offset = 0;

width = 32 * 5;
height = 32 * 5;

menu_x = camera_get_view_x(view_camera[0]) + 32 * 7;
menu_y = camera_get_view_y(view_camera[0]) + 32 * 4;

op_border = 20;
op_space = 32;
