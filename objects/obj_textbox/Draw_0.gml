accept_key = keyboard_check_pressed(vk_space)
	
	if setup == false{
		setup = true
		draw_set_font(global.font_main);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		
		page_number = array_length(text)
		for(var _p = 0; _p < page_number ; _p ++){
			text_length[_p] = string_length(text[_p]);
		}
	
	}
	


if(draw_char < text_length[page]){
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0 , text_length[page])
}

if(accept_key){
	if(draw_char == text_length[page]){
		if(page < page_number - 1){
			page++;
			draw_char = 0;
		}
		else{
			instance_destroy();
		}
	}
	else{
		draw_char = text_length[page]
	}
	
}

draw_sprite_ext(sprite_index, image_index, textbox_x, textbox_y, textbox_width/sprite_width, textbox_height/sprite_height, 0, c_white, 0.90)
 var _drawtext = string_copy(text[page], 1 ,draw_char)
 draw_text_ext(textbox_x + border, textbox_y + border, _drawtext, line_sep, line_width)