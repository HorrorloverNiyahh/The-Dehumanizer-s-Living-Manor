var _up = ketboard_check_pressed(vk_up);
var _dowm = keyboard_check_pressed(vk_down);
var_select = keyboard_check_pressed(vk_enter);

// Move selection
menu_index += _down - _up;
if (menu_index < 0) menu_index = array_length(menu_options) - 1;
if (menu_index >= array_length(menu_options)) menu_index = 0; 

// Execute action
if (_select) {
	if (menu_index == 0) room_goto(rm_game); // Start
	if (menu_index == 1) game_end(); // Quit