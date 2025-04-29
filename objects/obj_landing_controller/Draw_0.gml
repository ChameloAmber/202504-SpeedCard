/// @description Insert description here
// You can write your code in this editor
var _width = 0
var _height = 0
var _sprite = -1

switch global.screen.size {
	case 1:
		_width = sprite_get_width(spr_landing_title_1x)
		_height = sprite_get_height(spr_landing_title_1x)
		_sprite = spr_landing_title_1x
		break
	case 2: 
		_width = sprite_get_width(spr_landing_title_2x)
		_height = sprite_get_height(spr_landing_title_2x)
		_sprite = spr_landing_title_2x
		break
}

draw_sprite(_sprite, 0, (global.screen.width/2)-(_width/2), max(global.screen.height*0.08, 30))