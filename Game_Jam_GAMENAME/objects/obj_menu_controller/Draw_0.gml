draw_set_font(fnt_menu);
var _x = roo_width / 2;
var _y = room_height / 2;


for (var i = 0; < array_length(menu_options); i++) {
	var col = #590000;
	if (i == menu_index) col = c_yellow; // Highlight color
	draw_text_color(x, y + (i * 32), menu_options[i],col, col, col, col, 1);
	{