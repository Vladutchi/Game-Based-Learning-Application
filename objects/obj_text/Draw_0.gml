draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

draw_sprite_ext(sprite_index, image_index, textbox_x, textbox_y, textbox_width/sprite_width, textbox_height/sprite_height, 0, c_white, 0.80)
var _drawtext = text
 
 
 
 switch(room){
	case rm_1:{
		_drawtext = "slimes <- " + string(obj_rm_var.slimes)
	}break;
	
	case rm_2:{
		_drawtext = "slimes <- " + string(obj_rm_var.slimes)+ "\n" +"coins <- " + string(obj_rm_var.coins)
	}break;
	
	case rm_3:{
		_drawtext = "slimes <- " + string(obj_rm_var.slimes)+ "\n" +"coins <- " + string(obj_rm_var.coins)
	}break;
	
	case rm_4:{
		_drawtext = "slimes <- " + string(obj_rm_var.slimes)+ "\n" +"coins <- " + string(obj_rm_var.coins) + "\n" + "hearts <- " + string(obj_rm_var.hearts)
	}break;
	
	case rm_6:{
		_drawtext = "slimes <- " + string(obj_rm_var.slimes)
	}break;
	
	case rm_7:{
		_drawtext = "slime direction <- " + obj_blueslime.move_direction
	}break;
	
	case rm_8:{
		_drawtext = "coins <- " + string(obj_rm_var.coins)
	}break;
	
	case rm_9:{
		_drawtext = "hearts <- " + string(obj_rm_var.hearts) + "\n" +"n <- " + string(obj_for.n)
	}break;
	
	case rm_boss_10:{
		if instance_exists(obj_boss){
			_drawtext = "boss <- " + string(obj_boss_lvl1.hp)
		}
	}break;
 }
 
 
 
 draw_text_ext(textbox_x + border, textbox_y + border, _drawtext, line_sep, line_width)