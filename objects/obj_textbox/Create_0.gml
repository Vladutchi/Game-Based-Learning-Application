textbox_width = 32 * 5;
textbox_height = 32 * 3;

textbox_x = camera_get_view_x(view_camera[0]) + 32 * 4;
textbox_y = camera_get_view_y(view_camera[0]) + 32 * 3;

border = 10;
line_sep = 20;
line_width = textbox_width - 2 * border;
depth = -9998;

page = 0;
page_number = 0;
setup = false;

function add_text(_text) {
	text[page_number] = _text;
	page_number++;
}
