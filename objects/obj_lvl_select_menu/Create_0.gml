level_list = [rm_1, rm_2, rm_3, rm_4, rm_5, rm_6, rm_7, rm_8, rm_9, rm_boss_10];
level_names = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5", "Level 6", "Level 7", "Level 8", "Level 9", "Level 10"];
unlocked_levels = [true, true, true, true, true, true, true, true, true, true];

// Position 0 will be the "Back" button
level_pos = 0;
visible_count = 4;
scroll_offset = 0;

width = 32 * 3;
height = 32 * 5;

menu_x = camera_get_view_x(view_camera[0]) + 32 * 8;
menu_y = camera_get_view_y(view_camera[0]) + 32 * 4;

op_border = 20;
op_space = 32;
