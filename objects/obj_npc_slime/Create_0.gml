
start_quiz = false;
option_answer = -1;
question_num = 0;
numbers_generated = [];


function generate_numbers() {
	
	var _random_number;
    for (var _i = 0; _i <= 4 ; _i++) {
		
        do {	
            _random_number = irandom_range(0, 9);	
        } until (not array_contains(numbers_generated, _random_number));
		
        numbers_generated[_i] = _random_number;
    }
}

generate_numbers();

function add_question(_question,_option0,_option1,_option2,_correct_answer){
	
		if( not instance_exists(obj_textbox)){
				var _dialoguebox = instance_create_depth(0,0,-9998,obj_questionbox)
				_dialoguebox.question = _question
				_dialoguebox.options[0] = _option0
				_dialoguebox.options[1] = _option1
				_dialoguebox.options[2] = _option2
		}
		if(option_answer != -1){
				if(option_answer == _correct_answer){
					option_answer = -1;
					instance_destroy(obj_questionbox)
					question_num++;
				}
				else {
						obj_warp.warp_player(room, obj_warp.target_x, obj_warp.target_y); // restart room
				}
			}
}


function select_question(_random_number){
	switch(_random_number){
			case 0:{
				add_question("What is a program?", "A set of computer instructions","A collection of data","A representation of code",0)
			}break;
			case 1:{
				add_question("What is a variable in programming?","A constant value","A named storage space","A name for data",1)
			
			}break;
			
			case 2:{
				add_question("What does '<>' do in programming?","Reverses a condition's value","Checks if values are equal","Checks if values are not equal",2)

			}break;
			
			case 3:{
				add_question("What does '*' do in programming?","Multiplies values","Divides values","Adds values",0)
		
			}break;
			
			case 4:{
				add_question("What does '/' do in programming?","Multiplies values","Divides values","Adds values",1)
		
			}break;
			
			case 5:{
				add_question("What does 'NOT' do in programming?","Reverses a condition's value","Returns false","Checks if values are not equal",0)
			
			}break;
			case 6:{
				add_question("When does 'A OR B' return true?","If both A and B are true","If either A or B is true","If at least one of them is true",2)
			
			}break;
			case 7:{
				add_question("When does 'A AND B' return true?","If both A and B are true","If either A or B is true","If at least one of them is true",0)
			
			}break;
			case 8:{
				add_question("Evaluate the comparison:" +"\n"+"6 - 2 = 3 + 1","true","false","4",0)
			
			}break;
			case 9:{
				add_question("Evaluate the comparison:" +"\n"+"3 + 2 > 6 - 1","true","false","5",1)
			
			}break;
			
	
	}
}

function quiz(){
	switch(question_num){
		
			case 0:{
				select_question(numbers_generated[0])
			
			}break;
			
			case 1:{
				select_question(numbers_generated[1])
			
			}break;
			
			case 2:{
				select_question(numbers_generated[2])

			}break;
			
			case 3:{
				select_question(numbers_generated[3])
		
			}break;
			
			case 4:{
				select_question(numbers_generated[4])
		
			}break;
			
			case 5:{
				var _textbox = instance_create_depth(0,0,-9998,obj_textbox)
				_textbox.textbox_width = 32 * 5;
				_textbox.textbox_height = 32 * 5;
				_textbox.line_width = _textbox.textbox_width - 2 * _textbox.border
				_textbox.textbox_x = camera_get_view_x(view_camera[0]) + 32*6
				_textbox.textbox_y = camera_get_view_y(view_camera[0]) +32*2
			
				_textbox.add_text(". . .")
				_textbox.add_text("You answered all the questions correctly.")
				_textbox.add_text("You can pass now!")
				question_num++;
			
			}break;
			
			case 6:{
				if(not instance_exists(obj_textbox))
					instance_destroy(obj_lock)
			
			}break;
			
	}
}









