// 1. Get Inputs (WASD and Arrows)
var _right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _left  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
var _up    = keyboard_check(vk_up)    || keyboard_check(ord("W"));
var _down  = keyboard_check(vk_down)  || keyboard_check(ord("S"));

// 2. Calculate Movement
// This subtracts left from right (e.g., 1 - 0 = 1, moving right)
var _x_input = _right - _left;
var _y_input = _down - _up;

// 3. Apply Speed
x_speed = _x_input * move_speed;
y_speed = _y_input * move_speed;

// 4. Update Position
x += x_speed;
y += y_speed;

// 5. Flip Sprite (Optional)
// Flips the sprite horizontally based on direction
if (_x_input != 0) {
    image_xscale = _x_input; 
}