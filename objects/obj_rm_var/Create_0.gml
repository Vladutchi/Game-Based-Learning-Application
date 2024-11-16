slimes = 0;
coins = 0;
hearts = 1;

function has_last_digit_3_or_8(_n){
	
	var _str = string(_n)
	var _len = string_length(_str)
	
	if(string_char_at(_str,_len) == "3" or string_char_at(_str,_len) == "8")
		return true;
	return false;
	
}

function check_lvl_8(_n){
	if(_n != floor(_n))
		return false;
	if(has_last_digit_3_or_8(_n))
		return true;
	else return check_lvl_8(_n/2)
	
}

