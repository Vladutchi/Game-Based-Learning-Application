

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

