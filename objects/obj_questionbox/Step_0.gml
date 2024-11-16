var _up_key = keyboard_check_pressed(ord("W"));
var _down_key = keyboard_check_pressed(ord("S"));
var _accept_key = keyboard_check_pressed(vk_space);
pos += _down_key - _up_key;

if(pos >= op_length) {pos = 0;}
if(pos < 0){pos = op_length - 1;}

if _accept_key{
	if room == rm_5{
		switch(pos){
		
			case 0:{
				obj_npc_slime.option_answer = 0;
			}break;
		
			case 1:{
				obj_npc_slime.option_answer = 1;
			}break;
		
			case 2:{
				obj_npc_slime.option_answer = 2;
			}break;
	
		}
	}
	else{
		switch(pos){
		
			case 0:{
				obj_boss_lvl1.option_answer = 0;
			}break;
		
			case 1:{
				obj_boss_lvl1.option_answer = 1;
			}break;
		
			case 2:{
				obj_boss_lvl1.option_answer = 2;
			}break;
	
		}
		
	}
	
}
