var _up = keyboard_check_pressed(ord("W"));
var _down = keyboard_check_pressed(ord("S"));
var _accept = keyboard_check_pressed(vk_space);
var _cancel = keyboard_check_pressed(vk_escape);

var _total_options = array_length(level_list) + 1; // +1 for Back button

// Scroll DOWN
if (_down) {
    do {
        level_pos++;
        if (level_pos >= _total_options) level_pos = 0;
    } until (level_pos == 0 || unlocked_levels[level_pos - 1]);
}

// Scroll UP
if (_up) {
    do {
        level_pos--;
        if (level_pos < 0) level_pos = _total_options - 1;
    } until (level_pos == 0 || unlocked_levels[level_pos - 1]);
}

// Adjust scroll offset to keep selection visible
if (level_pos < scroll_offset) {
    scroll_offset = level_pos;
}
if (level_pos >= scroll_offset + visible_count) {
    scroll_offset = level_pos - visible_count + 1;
}

// Accept input
if (_accept && !instance_exists(obj_transition)) {
    if (level_pos == 0) {
        // Back selected
        instance_create_depth(0, 0, -9998, obj_title_menu);
        instance_destroy();
    } else {
        // Valid level selected
        global.room = level_list[level_pos - 1];
        obj_save_load.save();
        instance_create_depth(0, 0, -9998, obj_menu_transition);
        instance_destroy();
    }
}

// ESC also goes back
if (_cancel) {
    instance_create_depth(0, 0, -9998, obj_title_menu);
    instance_destroy();
}
