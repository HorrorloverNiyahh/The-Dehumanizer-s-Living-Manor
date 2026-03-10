// Update Title Animation Timer
title_timer += title_float_speed;

// --- GREEN GOO LOGIC ---
// Occasionally create a "goo" particle from the title area
if (random(100) < 15) { // 15% chance per frame
    var _gx = (room_width / 2) + irandom_range(-200, 200); // Random spot across title width
    var _gy = (room_height / 2) - 100; // Starting height of title
    
    // Create a built-in "rain" or "spark" effect colored green to look like goo
    effect_create_below(ef_spark, _gx, _gy, 0, c_lime);
}
// 1. Get Inputs
var _up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var _down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
var _select = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left);

// 2. Mouse Hover Logic
var _menu_x = room_width / 2;
var _menu_y = room_height / 2;
var _mouse_over_any = false;

for (var i = 0; i < array_length(menu_options); i++) {
    var _w = 200; // Approximate width for clicking
    var _h = 32;
    var _yy = _menu_y + (i * 32);
    
    if (point_in_rectangle(mouse_x, mouse_y, _menu_x - _w/2, _yy - _h/2, _menu_x + _w/2, _yy + _h/2)) {
        menu_index = i;
        _mouse_over_any = true;
    }
}

// 3. Keyboard Logic
if (!_mouse_over_any) {
    menu_index += (_down - _up);
    if (menu_index < 0) menu_index = array_length(menu_options) - 1;
    if (menu_index >= array_length(menu_options)) menu_index = 0;
}

// 4. Trigger Action
if (_select) {
    if (menu_index == 0) room_goto(rm_game); // Make sure this room exists!
    if (menu_index == 1) game_end();
}
// 4. Trigger Action
if (_select) {
    switch (menu_index) {
        case 0: 
            // "Start Game" is selected
            room_goto(rm_game_world); 
            break;
            
        case 1: 
            // "Quit" is selected
            game_end(); 
            break;
    }
}