draw_set_font(fnt_menu);
draw_set_halign(fa_center); 
draw_set_valign(fa_middle); 

var _x = room_width / 2;    
var _y = room_height / 2;

// --- 1. MOVING TITLE SECTION ---
// math: sin(timer) gives a value between -1 and 1
var _float_y = _y - 100 + (sin(title_timer) * title_float_range);

draw_set_color(c_lime); // Changed title color to green for the goo theme
draw_text_transformed(_x, _float_y, "The Dehumaizer's Living Manor", 2, 2, 0); 


// --- 2. MENU LOOP SECTION ---
for (var i = 0; i < array_length(menu_options); i++) {
    var col = #590000;      
    if (i == menu_index) col = c_yellow; 
    draw_text_color(_x, _y + (i * 40), menu_options[i], col, col, col, col, 1);
}