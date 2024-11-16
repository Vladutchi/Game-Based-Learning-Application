textbox_width = 32 * 7;
textbox_height = 32 * 5;

textbox_x = camera_get_view_x(view_camera[0]) + 32*3
textbox_y = camera_get_view_y(view_camera[0]) +32*2

line_width = textbox_width - 2 * border

add_text("If statements are used to specify which instructions should be executed depending on certain conditions.")
add_text("IF condition THEN" +"\n"+"   statement1" + "\n" +"ELSE" + "\n" + "   statement2" + "\n" + "END IF")
add_text("In this structure:" + "\n" + " 'condition' is a logical expression that evaluates to either true or false." + "\n" + " 'statement1' is executed if the condition is true." + "\n" + " 'statement2' is executed if the condition is false.")
add_text("You can click on the IF block to see it's code.")
add_text("You can attack the IF block to run it's code.")
