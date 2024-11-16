textbox_height = 32 * 4;
textbox_width = 32 * 6;
line_width = textbox_width - 2 * border
textbox_y = camera_get_view_y(view_camera[0]) + 32 * 2
add_text("Logical operators combine or modify true/false values in programming.")
add_text("AND: Returns true only if both conditions it connects are true." + "\n" +"Examples:" + "\n" + "true AND true evaluates to true"  + "\n" + "true AND false evaluates to false" + "\n" + "false AND false evaluates to false")
add_text("OR: Returns true if at least one of the connected conditions is true." + "\n" +"Examples:"  + "\n" + "true OR true evaluates to true"  + "\n" + "true OR false evaluates to true" + "\n" + "false OR false evaluates to false")
add_text("NOT: Reverses the value of a condition." + "\n" +"Examples:" + "\n" + "NOT(true) evaluates to false" + "\n" + "NOT(false) evaluates to true")