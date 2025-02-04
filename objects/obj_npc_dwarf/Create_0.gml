function add_dialogue(_textbox){
	
		if room == rm_hub_lvl2{
		
			_textbox.add_text("Thank you for rescuing me.")
			_textbox.add_text("I am ok now, thanks to you.")
			
		}else if room == rm_boss_10{	
			
			_textbox.add_text("I don't know what got into me.")
			_textbox.add_text("Sorry for causing you so much trouble")
			_textbox.add_text("I am ok now, thanks to you.")
          
	}else if room == rm_end{	
			
			_textbox.add_text("Roll credits:" + "\n" + "  Vlad Costin"+ "\n" +"  . . ."+ "\n" +"that's it.")
          
	}
}









