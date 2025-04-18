draw_sprite_ext(sprite_index, image_index, menu_x, menu_y, width/sprite_width, height/sprite_height, 0, c_white, 1)

draw_set_font(global.font_main_big);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for(var _i = 0; _i < op_length; _i ++){
	var _c = c_white;
	if(pos == _i){
		_c = #F8B800
		}
	draw_text_color(menu_x + op_border, menu_y + op_border + op_space *_i, options[_i], _c, _c, _c, _c, 1);
}

draw_set_font(global.font_main)

