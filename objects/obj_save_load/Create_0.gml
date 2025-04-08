global.level_list = [rm_1, rm_2, rm_3, rm_4, rm_5, rm_6, rm_7, rm_8, rm_9, rm_boss_10];

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
    var _string = string(global.level_reached);
    var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
    buffer_write(_buffer, buffer_string, _string);
    buffer_save(_buffer, "levels.save");
    buffer_delete(_buffer);
}

function load_levels() {
    if (file_exists("levels.save")) {
        var _buffer = buffer_load("levels.save");
        var _string = buffer_read(_buffer, buffer_string);
        global.level_reached = real(_string); // convert string to number
        buffer_delete(_buffer);
    } else {
        global.level_reached = 1; // default value if no save file
    }
}

function check_and_update_level_progress() {
	
    var _room_index = array_get_index(global.level_list, room);
    load_levels();
	
    if (_room_index != -1 and _room_index + 1 > global.level_reached) {
        global.level_reached = _room_index + 1;

        // Save the progress
        save_levels();
    }
}



