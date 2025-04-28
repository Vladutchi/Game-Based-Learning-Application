if room == rm_title_screen{
	
	textbox_width = 32 * 6;
	textbox_height = 32 * 3;

	textbox_x = camera_get_view_x(view_camera[0]) + 32*14
	textbox_y = camera_get_view_y(view_camera[0]) + 32*5
	
}else{
	if room == rm_7 {
		textbox_width = 32 * 6;
	}
	else{
		textbox_width = 32 * 3;
	}
	textbox_height = 32 * 4;

	textbox_x = camera_get_view_x(view_camera[0]) + 32*13
	textbox_y = camera_get_view_y(view_camera[0]) + 32*2

}

border = 16;
line_sep = 24;
line_width = textbox_width - 2 * border
depth = -9997


text = "" 

setup = false;
