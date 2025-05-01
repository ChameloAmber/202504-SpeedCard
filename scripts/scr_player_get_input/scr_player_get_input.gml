// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_get_input(){
	/*buttonCard1Pressed = keyboard_check_pressed(ord("Q"))
	buttonCard2Pressed = keyboard_check_pressed(ord("W"))
	buttonCard3Pressed = keyboard_check_pressed(ord("E"))
	buttonCard4Pressed = keyboard_check_pressed(ord("R"))
	buttonCard5Pressed = keyboard_check_pressed(ord("T"))*/
	buttonCard1Pressed = keyboard_check_pressed(81)
	buttonCard2Pressed = keyboard_check_pressed(87)
	buttonCard3Pressed = keyboard_check_pressed(69)
	buttonCard4Pressed = keyboard_check_pressed(82)
	buttonCard5Pressed = keyboard_check_pressed(84)
	buttonCardLeftPressed = keyboard_check_pressed(vk_left)
	buttonCardUpPressed = keyboard_check_pressed(vk_up)
	buttonCardDownPressed = keyboard_check_pressed(vk_down)
	buttonCardRightPressed = keyboard_check_pressed(vk_right)
	buttonCardDrawPressed = keyboard_check_pressed(vk_space)
	//buttonCardResetPressed = keyboard_check_pressed(ord("X"))
	buttonCardResetPressed = keyboard_check_pressed(90)
	/*if os_type == os_android || os_type == os_ios {
		buttonCardDrawPressed = device_mouse_check_button_pressed(0, mb_any)
	}*/
}