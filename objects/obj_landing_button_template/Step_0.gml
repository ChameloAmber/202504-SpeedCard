/// @description Insert description here
// You can write your code in this editor
if global.screen.size == 1 {
	// Switch to 1x
	sprite_index = sprite1x
} else {
	// Switch to 2x	
	sprite_index = sprite2x
}

var rtn = scr_get_object_position("landing-button-main", row, column)
x = rtn[0]
y = rtn[1]

if (global.controller.mode == "keyboard" && global.controller.landing.row == row && (!isColumnSensitive || global.controller.landing.column == column)) 
|| (global.controller.mode == "pointer" && position_meeting(device_mouse_x(0), device_mouse_y(0), self)) {
	global.controller.landing.row = row
	global.controller.landing.column = column
	isHovered = true
} else {
	isHovered = false
}