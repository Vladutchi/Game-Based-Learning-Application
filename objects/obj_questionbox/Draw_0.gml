draw_sprite_ext(sprite_index, image_index, textbox_x, textbox_y, width/sprite_width, height/sprite_height, 0, c_white, 1)

draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

draw_text_ext(textbox_x + border, textbox_y + border, question, line_sep, line_width)
 
for(var _i = 0; _i < op_length; _i ++){
	var _c = c_white;
	if(pos == _i){
		_c = #F8B800
		}
	draw_text_color(textbox_x + border, textbox_y + 64 + border + space *_i, options[_i], _c, _c, _c, _c, 1);
	
}

