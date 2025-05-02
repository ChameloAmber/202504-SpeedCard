/// @description Insert description here
// You can write your code in this editor
origin_x = floor((global.screen.width * 0.21) + (10 * global.screen.size) + ((20 + sprite_get_width(spr_card_base_1x)) * position * global.screen.size))
//origin_x = floor((global.screen.width * 0.46) + (global.screen.size * (20 + sprite_get_width(spr_card_base_1x)) * (position - 2)))
if holder == "player" {
	origin_y = floor(global.screen.height * 0.63) + ((sprite_get_height(spr_health_bar_base_1x) + 10) * global.screen.size)
} else if holder == "enemy" {
	origin_y = floor(global.screen.height * 0.05) + (10 * global.screen.size)
}

movement = "idle"
moveTime = 0