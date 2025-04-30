/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i <= 4; i++) {
	if device_mouse_check_button(i, mb_any) {
		lastTapX[i] = device_mouse_x(i)
		lastTapY[i] = device_mouse_y(i)
	}
}

/*if global.screenCurrent.width != browser_width || global.screenCurrent.height != browser_height {
	scr_screen_adjust()
}*/