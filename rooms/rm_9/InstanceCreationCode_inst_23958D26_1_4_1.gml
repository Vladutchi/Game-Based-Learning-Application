textbox_width = 32 * 6;
textbox_height = 32 * 5;


textbox_y = camera_get_view_y(view_camera[0]) +32*2

line_width = textbox_width - 2 * border
add_text("The FOR structure is used to execute a set of instructions a specific number of times.")
add_text("FOR variable <- start TO end DO" + "\n" + "   statement" + "\n" + "END FOR")
add_text("In this structure:" + "\n" + " 'variable' is the loop control variable." + "\n" + " 'start' is the initial value." + "\n" + " 'end' is the final value." + "\n" + " 'statement' is executed for each value of the variable from start to end.")
add_text("Example:" + "\n" + "FOR i <- 1 TO 3 DO" + "\n" + "   statement" + "\n" + "END FOR" + "\n" + " In this example, 'i' will be 1, then 2, then 3, and 'statement' will be executed exactly 3 times. ")
add_text("You can click on the FOR block to see its code.")
add_text("You can attack the FOR block to run its code.")
