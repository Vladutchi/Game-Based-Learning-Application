draw_sprite_ext(sprite_index, image_index, menu_x, menu_y, width/sprite_width, height/sprite_height, 0, c_white, 1);

draw_set_font(global.font_main_big);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

var _total_options = array_length(level_names) + 1; // +1 for "Back" option

for (var _i = 0; _i < visible_count; _i++) {
    var _index = scroll_offset + _i;
    if (_index >= _total_options) break;

    var _name_text = "";
    var _c = c_white;

    if (_index == 0) {
        _name_text = "Back";
    } else {
        _name_text = level_names[_index - 1];
    }

    // Highlight selected option
    if (level_pos == _index) {
        _c = $F8B800;
    } else if (_index > 0 && !unlocked_levels[_index - 1]) {
        _c = c_gray;
    }

    // Base draw position
    var tx = menu_x + op_border;
    var ty = menu_y + op_border + (op_space * _i);

    // Draw level name or "Back"
    draw_text_color(tx, ty, _name_text, _c, _c, _c, _c, 1);

    // Offset x for additional bracketed info
    tx += string_width(_name_text);

    // If a real level and unlocked, draw steps/best
    if (_index > 0 && unlocked_levels[_index - 1]) {
        var _steps = global.level_steps[_index - 1];
        var _best = global.level_best[_index - 1];

        if (_steps > 0) {
            // Draw " ["
            draw_text_color(tx, ty, " [", _c, _c, _c, _c, 1);
            tx += string_width(" [");

            // Draw steps (red if worse than best, green if equal or better)
            var step_color = (_steps > _best) ? c_red : c_lime;
            var steps_str = string(_steps);
            draw_text_color(tx, ty, steps_str, step_color, step_color, step_color, step_color, 1);
            tx += string_width(steps_str);

            // Draw "/"
            draw_text_color(tx, ty, "/", _c, _c, _c, _c, 1);
            tx += string_width("/");

            // Draw best (always green)
            var best_str = string(_best);
            draw_text_color(tx, ty, best_str, c_lime, c_lime, c_lime, c_lime, 1);
            tx += string_width(best_str);

            // Draw "]"
            draw_text_color(tx, ty, "]", _c, _c, _c, _c, 1);
        }
    }
}


draw_set_font(global.font_main);
