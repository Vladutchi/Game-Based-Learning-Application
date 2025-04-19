global.font_main = font_add_sprite(spr_font,32,true,1)
global.font_main_big =  font_add_sprite(spr_font_big,32,true,1)

draw_set_color(c_white);

// Set fullscreen
window_set_fullscreen(true);

// Set the internal resolution
var internal_w = 640;
var internal_h = 320;

surface_resize(application_surface, internal_w, internal_h);
display_set_gui_maximize(internal_w, internal_h);




