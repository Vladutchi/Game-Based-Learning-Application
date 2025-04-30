global.level_list = [rm_1, rm_2, rm_3, rm_4, rm_5, rm_6, rm_7, rm_8, rm_9, rm_boss_10];
global.level_steps = array_create(array_length(global.level_list), 0);
global.level_best = ["18", "37", "44", "26", "8", "27", "34", "43", "27", "23"]

function save() {
    var _save_data = global.room; // Store the value directly
    var _string = json_stringify(_save_data);
    var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
    buffer_write(_buffer, buffer_string, _string);
    buffer_save(_buffer, "game.save");
    buffer_delete(_buffer);
}

function load() {
    if (file_exists("game.save")) {
        var _buffer = buffer_load("game.save");
        var _string = buffer_read(_buffer, buffer_string);
        var _load_data = json_parse(_string);
        global.room = _load_data; // Assign the retrieved value directly
        buffer_delete(_buffer);
    }
}

function save_levels() {
    var _string = json_stringify(global.level_steps);
    var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
    buffer_write(_buffer, buffer_string, _string);
    buffer_save(_buffer, "levels.save");
    buffer_delete(_buffer);
}

function load_levels() {
    if (file_exists("levels.save")) {
        var _buffer = buffer_load("levels.save");
        var _string = buffer_read(_buffer, buffer_string);
        global.level_steps = json_parse(_string);
        buffer_delete(_buffer);
    } else {
        global.level_steps = array_create(array_length(global.level_list), 0); // all locked
    }
}


function check_and_update_level_progress(current_steps_used) {
		
		var _room_index = array_get_index(global.level_list, room);
		load_levels();
	
		if (_room_index != -1 and current_steps_used != 0) {
			var _old_steps = global.level_steps[_room_index];
        
			if (_old_steps == 0 or current_steps_used < _old_steps) {
				global.level_steps[_room_index] = current_steps_used;
            
				// Save the updated best steps
				save_levels();
			}
		}
	
}




