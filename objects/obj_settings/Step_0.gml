if (keyboard_check_pressed(ord("F")) or keyboard_check_pressed(vk_f11)) {
    var is_fullscreen = window_get_fullscreen();
    window_set_fullscreen(!is_fullscreen);
}
