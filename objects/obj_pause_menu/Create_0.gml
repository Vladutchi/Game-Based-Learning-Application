// Dimensions and layout
width = 32 * 3;
height = 32 * 2;

op_border = 12;
op_space = 25;

pos = 0;

menu_x = camera_get_view_x(view_camera[0]) + 32 * 8;
menu_y = camera_get_view_y(view_camera[0]) + 32 * 4;

options[0] = "Resume";
options[1] = "Quit to Menu";

op_length = array_length(options);
