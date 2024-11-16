start_quiz = false;
option_answer = -1;
question_num = 0;
numbers_generated = [];

function generate_numbers() {
	
	var _random_number;
    for (var _i = 0; _i <= 6 ; _i++) {
		
        do {	
            _random_number = irandom_range(0, 9);	
        } until (not array_contains(numbers_generated, _random_number));
		
        numbers_generated[_i] = _random_number;
    }
}

generate_numbers();

function reset_quiz(){
	start_quiz = false;
	option_answer = -1;
	instance_destroy(obj_questionbox)
	question_num++;
	
}

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
					reset_quiz();
					hp--;
					if(hp == 0){
						instance_destroy();
					}
				}
				else {
					reset_quiz();
					obj_player.is_hit(); // player takes damage
				}
			}
}


function select_question(_random_number){
	switch(_random_number){
			case 0:{
				add_question("What does an IF statement do in programming?","Executes code if condition met","Repeats code indefinitely","Stores data",0)
				
			}break;
			case 1:{
				add_question("When does a WHILE loop execute its statements?","Only once","As long as a condition is true","Never",1)
			
			}break;
			
			case 2:{
				add_question("What is the purpose of a FOR loop?","Executes code if condition met","Run code a set number of times","Store data",1)

			}break;
			
			case 3:{
				add_question("When does a REPEAT UNTIL loop stop executing?","When a condition is true","After a set number of times","Never",0)
		
			}break;
			
			case 4:{
				add_question("How do you check if a variable equals a number?","IF variable = number THEN","FOR variable = number DO","WHILE variable = number DO",0)
		
			}break;
			
			case 5:{
				add_question("What is executed in an ELSE block?","Code if condition is true","Code if condition is false","Code regardless of conditions",1)
			
			}break;
			case 6:{
				add_question("Which loop is best for a set number of iterations?","WHILE loop","FOR loop","REPEAT UNTIL loop",1)
			
			}break;
			case 7:{
				add_question("How do you start a WHILE loop?","WHILE condition DO","WHILE condition THEN","WHILE variable <- start TO end",0)
			
			}break;
			case 8:{
				add_question("What is a condition in programming?","A sequence of code","A statement that is true or false","A variable",1)
			
			}break;
			case 9:{
				add_question("What is a statement in programming?","Code performing an instruction","A collection of variables","A programming structure",0)


			
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
				select_question(numbers_generated[5])
		
			}break;
			case 6:{
				select_question(numbers_generated[6])
		
			}break;
			
	}
}

function is_hit()
{
	start_quiz = true;
	
}









