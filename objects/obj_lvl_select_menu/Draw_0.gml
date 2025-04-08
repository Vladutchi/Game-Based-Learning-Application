draw_sprite_ext(sprite_index, image_index, menu_x, menu_y, width/sprite_width, height/sprite_height, 0, c_white, 1);

draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

var _total_options = array_length(level_names) + 1; // +1 for "Back" option

for (var _i = 0; _i < visible_count; _i++) {
    var _index = scroll_offset + _i;
    if (_index >= _total_options) break;

    var _text;
    var _c = c_white;

    if (_index == 0) {
        _text = "Back";
    } else {
        _text = level_names[_index - 1];
        if (!unlocked_levels[_index - 1]) _c = c_gray;
    }

    if (level_pos == _index) {
        _c = $F8B800;
    }

    draw_text_color(
        menu_x + op_border,
        menu_y + op_border + (op_space * _i),
        _text,
        _c, _c, _c, _c, 1
    );
}
