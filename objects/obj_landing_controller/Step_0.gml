/// @description Insert description here
// You can write your code in this editor
if browser_width != global.screen.widthActual || browser_height != global.screen.heightActual {
	scr_screen_adjust()	
}

if keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right) {
	if global.controller.landing.row == -1 {
		global.controller.landing.row = 0
	}
	if global.controller.landing.column == 0 {
		global.controller.landing.column = 1	
	} else {
		global.controller.landing.column = 0	
	}
}

if keyboard_check_pressed(vk_up) {
	if global.controller.landing.row == -1 {
		global.controller.landing.row = 0
	} else if global.controller.landing.row > 0 {
		global.controller.landing.row--
	}
}

if keyboard_check_pressed(vk_down) {
	if global.controller.landing.row == -1 {
		global.controller.landing.row = 0
	} else if global.controller.landing.row < 2 {
		global.controller.landing.row++
	}
}