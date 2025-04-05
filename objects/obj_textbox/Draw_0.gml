var _accept_key = keyboard_check_pressed(vk_space);

if (!setup) {
	setup = true;
	draw_set_font(global.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	page_number = array_length(text);
}

if (_accept_key) {
	if (page < page_number - 1) {
		page++;
	} else {
		instance_destroy();
	}
}

draw_sprite_ext(sprite_index, image_index, textbox_x, textbox_y, textbox_width/sprite_width, textbox_height/sprite_height, 0, c_white, 0.90);

draw_text_ext(textbox_x + border, textbox_y + border, text[page], line_sep, line_width);
