/// @description Insert description here
// You can write your code in this editor
isDeviceActive = false
for (var i = 0; i < array_length(deviceX); i++) {
	if (abs(deviceX[i] - device_mouse_x(i)) >= 10) || (abs(deviceY[i] - device_mouse_y(i))) {
		isDeviceActive = true
	}
	deviceX[i] = device_mouse_x(i)
	deviceY[i] = device_mouse_y(i)
}

if keyboard_check(vk_anykey) {
	global.controller.mode = "keyboard"
} else if isDeviceActive || device_mouse_check_button(0, mb_any) || device_mouse_check_button(1, mb_any) {
	global.controller.mode = "pointer"	
}