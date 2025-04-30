/// @description Insert description here
// You can write your code in this editor
switch global.screen.size {
	case 1:
		sprite_index = spr_landing_screen_1x
		break
	case 2:
		sprite_index = spr_landing_screen_2x
		break
}

x = (global.screen.width/2)-(sprite_width/2)
y = global.screen.height * 0.4