if position_meeting(mouse_x, mouse_y,id) and mouse_check_button_pressed(mb_left) and not instance_exists(obj_textbox){
	
	if room == rm_hub_lvl2 or room == rm_end{
		var _textbox = instance_create_depth(0,0,-9998,obj_textbox)
		_textbox.add_text("Thank you for playing!  : D")
	}
	
	else if room == rm_5{
		if(question_num == 0)
			start_quiz = true;
		else if question_num == 6{
			var _textbox = instance_create_depth(0,0,-9998,obj_textbox)
			_textbox.add_text(": P")
		}
		
	}
}

if(start_quiz){
	quiz();
}