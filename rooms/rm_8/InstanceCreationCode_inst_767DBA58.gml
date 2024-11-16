textbox_width = 32 * 6;
textbox_height = 32 * 4;

textbox_y = camera_get_view_y(view_camera[0]) +32*2

line_width = textbox_width - 2 * border
			
add_text("The REPEAT UNTIL structure is used to repeatedly execute a set of instructions until a specified condition becomes true.")
add_text("REPEAT" + "\n" + "   statement" + "\n" + "UNTIL condition")
add_text("In this structure:" + "\n" + " 'statement' is executed repeatedly until the condition is true." + "\n" + " 'condition' is a logical expression that evaluates to true or false.")
add_text("The difference between WHILE and REPEAT UNTIL:" + "\n" + " WHILE checks the condition before executing the statement." + "\n" + " REPEAT UNTIL checks the condition after executing the statement.")
add_text(" The REPEAT UNTIL loop always runs at least once"+ "\n" +" The WHILE loop may not run at all if the condition is false at the start.")
add_text("You can click on the REPEAT block to see its code.")
add_text("The REPEAT block is already running. After it stops, you can attack it to activate it again.")