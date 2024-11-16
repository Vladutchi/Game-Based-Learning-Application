function add_dialogue(_textbox){
	switch(room){
		
		case rm_0_home:{
		
			_textbox.add_text("Select your movement inputs from the green arrows.")
			_textbox.add_text("You can choose to attack after a movement input by selecting the green sword.")
			_textbox.add_text("You can see your selected inputs on the yellow collumn on the right.")
			_textbox.add_text("Use the green triangle button to run your selected inputs.")
			_textbox.add_text("Use the red X button to cancel your selection and stop the running of inputs.")
			
			}break;
			
		case rm_hub_lvl1:{	
		
			_textbox.add_text("Select your movement inputs from the green arrows.")
			_textbox.add_text("You can choose to attack after a movement input by selecting the green sword.")
			_textbox.add_text("You can see your selected inputs on the yellow collumn on the right.")
			_textbox.add_text("Use the green triangle button to run your selected inputs.")
			_textbox.add_text("Use the red X button to cancel your selection and stop the running of inputs.")
		
			}break;
			
		case rm_1:{	
		
			_textbox.add_text("A variable is a named storage space for data that can change during program execution.")
			_textbox.add_text("For our example: 'slimes <- 2' 'slimes' is the name of our variable while '2' is the data value stored.")
			_textbox.add_text("You can see your variables on the right side of the screen.")
			_textbox.add_text("Some exits may be closed. Click on the exit to see what is required for you to pass.")
		
			}break;
			
		case rm_2:{
			
			_textbox.textbox_height = 32 * 3;
			_textbox.textbox_width = 32 * 6;
			_textbox.line_width = _textbox.textbox_width - 2 * _textbox.border
			_textbox.textbox_y = camera_get_view_y(view_camera[0]) + 32 * 3
			_textbox.add_text("Comparison operators are symbols used to compare two values in programming. They return true or false based on the result.")
			_textbox.add_text("Equal to (=): Checks if two values are equal." + "\n" + "Example: 5 = 5 evaluates to true")
			_textbox.add_text("Not equal to (<>): Checks if two values are not equal." + "\n" + "Example: 7 <> 3 evaluates to true")
			_textbox.add_text("Greater than (>): Checks if the first value is greater than the second." + "\n" + "Example: 8 > 3 evaluates to true")
			_textbox.add_text("Less than (<): Checks if the first value is less than the second." + "\n" + "Example: 4 < 2 evaluates to false")
			_textbox.add_text("Greater than or equal to (>=): Checks if the first value is greater than or equal to the second." + "\n" + "Example: 6 >= 6 evaluates to true")
			_textbox.add_text("Less than or equal to (<=): Checks if the first value is less than or equal to the second." + "\n" + "Example: 9 <= 7 evaluates to false")
			_textbox.add_text("Some exits may be closed. Click on the exit to see what is required for you to pass.")
		}break;
		
		case rm_3:{
			
			_textbox.add_text("Arithmetic operators are symbols used to perform mathematical calculations in programming.")
			_textbox.add_text("Addition (+): Adds two values together." + "\n" +"Example: 5 + 3 equals 8")
			_textbox.add_text("Subtraction (-): Subtracts the second value from the first." + "\n" +"Example: 7 - 2 equals 5")
			_textbox.add_text("Multiplication (*): multiplies two values together." + "\n" +"Example: 4 * 6 equals 24")
			_textbox.add_text("Division (/): divides the first value by the second." + "\n" +"Example: 1 / 2 equals 0.5")
			
		}break;
		
		case rm_4:{
			
			_textbox.textbox_height = 32 * 4;
			_textbox.textbox_width = 32 * 6;
			_textbox.line_width = _textbox.textbox_width - 2 * _textbox.border
			_textbox.textbox_y = camera_get_view_y(view_camera[0]) +32*2
			_textbox.add_text("Logical operators combine or modify true/false values in programming.")
			_textbox.add_text("AND: Returns true only if both conditions it connects are true." + "\n" +"Examples:"  + "\n" +"true AND true evaluates to true"  + "\n" + "true AND false evaluates to false" + "\n" + "false AND false evaluates to false")
			_textbox.add_text("OR: Returns true if at least one of the connected conditions is true." + "\n" +"Examples:"  + "\n" +"true OR true evaluates to true"  + "\n" + "true OR false evaluates to true" + "\n" + "false OR false evaluates to false")
			_textbox.add_text("NOT: Reverses the value of a condition." + "\n" +"Examples:" + "\n" + "NOT(true) evaluates to false" + "\n" + "NOT(false) evaluates to true")
			
		}break;
		
		case rm_5:{
			
			if(obj_npc_slime.question_num == 6)
				_textbox.add_text("Good job!")
			else
				_textbox.add_text("Sorry, no cheating.")
			
		}break;
		
		case rm_6:{
			
			_textbox.textbox_width = 32 * 7;
			_textbox.textbox_height = 32 * 5;

			_textbox.textbox_x = camera_get_view_x(view_camera[0]) + 32*3
			_textbox.textbox_y = camera_get_view_y(view_camera[0]) +32*2

			_textbox.line_width = _textbox.textbox_width - 2 * _textbox.border

			_textbox.add_text("If statements are used to specify which instructions should be executed depending on certain conditions.")
			_textbox.add_text("IF condition THEN" +"\n"+"   statement1" + "\n" +"ELSE" + "\n" + "   statement2" + "\n" + "END IF")
			_textbox.add_text("In this structure:" + "\n" + " 'condition' is a logical expression that evaluates to either true or false." + "\n" + " 'statement1' is executed if the condition is true." + "\n" + " 'statement2' is executed if the condition is false.")
			_textbox.add_text("You can click on the IF block to see it's code.")
			_textbox.add_text("You can attack the IF block to activate it.")

		}break;
		
		case rm_7:{
			
			_textbox.textbox_width = 32 * 6;
			_textbox.textbox_height = 32 * 4;

			_textbox.textbox_y = camera_get_view_y(view_camera[0]) +32*2

			_textbox.line_width = _textbox.textbox_width - 2 * _textbox.border
			
			_textbox.add_text("The WHILE structure is used to repeatedly execute a set of instructions as long as a specified condition is true.")
			_textbox.add_text("WHILE condition DO" +"\n"+"   statement" + "\n" +"END WHILE")
			_textbox.add_text("In this structure:" + "\n" + " 'condition' is a logical expression that evaluates to either true or false." + "\n" + " 'statement' is executed repeatedly as long as the condition is true.")
			_textbox.add_text("You can click on the IF and WHILE blocks to see their respective code.")
			_textbox.add_text("You can attack the IF and WHILE blocks to run their respective code.")
	
		}break;
		
		case rm_8:{
			
			_textbox.textbox_width = 32 * 6;
			_textbox.textbox_height = 32 * 4;

			_textbox.textbox_y = camera_get_view_y(view_camera[0]) +32*2

			_textbox.line_width = _textbox.textbox_width - 2 * _textbox.border
			
			_textbox.add_text("The REPEAT UNTIL structure is used to repeatedly execute a set of instructions until a specified condition becomes true.")
			_textbox.add_text("REPEAT" + "\n" + "   statement" + "\n" + "UNTIL condition")
			_textbox.add_text("In this structure:" + "\n" + " 'statement' is executed repeatedly until the condition is true." + "\n" + " 'condition' is a logical expression that evaluates to true or false.")
			_textbox.add_text("The difference between WHILE and REPEAT UNTIL:" + "\n" + " WHILE checks the condition before executing the statement." + "\n" + " REPEAT UNTIL checks the condition after executing the statement.")
			_textbox.add_text(" The REPEAT UNTIL loop always runs at least once"+ "\n" +" The WHILE loop may not run at all if the condition is false at the start.")
			_textbox.add_text("You can click on the REPEAT block to see its code.")
			_textbox.add_text("The REPEAT block is already running. After it stops, you can attack it to activate it again.")

	
		}break;
		
		case rm_9:{
			
			_textbox.textbox_width = 32 * 6;
			_textbox.textbox_height = 32 * 5;

			_textbox.textbox_y = camera_get_view_y(view_camera[0]) +32*2

			_textbox.line_width = _textbox.textbox_width - 2 * _textbox.border
			
			_textbox.add_text("The FOR structure is used to execute a set of instructions a specific number of times.")
			_textbox.add_text("FOR variable <- start TO end DO" + "\n" + "   statement" + "\n" + "END FOR")
			_textbox.add_text("In this structure:" + "\n" + " 'variable' is the loop control variable." + "\n" + " 'start' is the initial value." + "\n" + " 'end' is the final value." + "\n" + " 'statement' is executed for each value of the variable from start to end.")
			_textbox.add_text("Example:" + "\n" + "FOR i <- 1 TO 5 DO" + "\n" + "   statement" + "\n" + "END FOR" + "\n" + " In this example, 'i' will be 1, then 2, then 3, then 4, then 5 and 'statement' will be executed exactly 5 times. ")
			_textbox.add_text("You can click on the FOR block to see its code.")
			_textbox.add_text("You can attack the FOR block to run its code.")
			
			
		}break;
		case rm_boss_10:{
			
			if(instance_exists(obj_boss))
				_textbox.add_text("Good luck!")
			else
				_textbox.add_text("Good job!")
			
		}break;
		
		
	}
}
	

