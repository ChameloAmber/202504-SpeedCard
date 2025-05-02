// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_get_input(){
	buttonCard1Pressed = keyboard_check_pressed(global.controller.mapping.card1)
	buttonCard2Pressed = keyboard_check_pressed(global.controller.mapping.card2)
	buttonCard3Pressed = keyboard_check_pressed(global.controller.mapping.card3)
	buttonCard4Pressed = keyboard_check_pressed(global.controller.mapping.card4)
	buttonCard5Pressed = keyboard_check_pressed(global.controller.mapping.card5)
	buttonField1Pressed = keyboard_check_pressed(global.controller.mapping.field1)
	buttonField2Pressed = keyboard_check_pressed(global.controller.mapping.field2)
	buttonField3Pressed = keyboard_check_pressed(global.controller.mapping.field3)
	buttonCardDrawPressed = keyboard_check_pressed(global.controller.mapping.draw)
	buttonCardResetPressed = keyboard_check_pressed(88)
	/*if os_type == os_android || os_type == os_ios {
		buttonCardDrawPressed = device_mouse_check_button_pressed(0, mb_any)
	}*/
}