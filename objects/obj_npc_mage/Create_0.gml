function add_dialogue(_textbox){
	if room == rm_hub_lvl1{
		
		_textbox.add_text("Welcome, traveler! Thank you, for coming to our aid.")
		_textbox.add_text("A good friend of mine lost himself in the maze above. We need to rescue him.")
		_textbox.add_text("To do so, we'll have to learn the logical problems of programming.")
		_textbox.add_text("Take the passage above. Hurry, we don't have much time.")
	}
	else if room == rm_hub_lvl2{	
		
		_textbox.add_text("You did it! My firend is back!")
		_textbox.add_text("And now you know the basics of programming. I hope this will help you in the future!")
		_textbox.add_text("You helped us and you learned something new. Good job!")
		
	}
	else if room == rm_end{	
		
		_textbox.add_text("Let's celebrate the end of your adventure!")
		
	}
}








