/// @description Insert description here
// You can write your code in this editor
origin_x = floor((global.screen.width * 0.46) + (global.screen.size * (20 + sprite_get_width(spr_card_base_1x)) * (position - 2)))
if holder == "player" {
	origin_y = floor(global.screen.height * 0.75)
} else if holder == "enemy" {
	origin_y = floor(global.screen.height * 0.05)
}

movement = "idle"
moveTime = 0