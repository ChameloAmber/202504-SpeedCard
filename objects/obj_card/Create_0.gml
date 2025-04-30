/// @description Insert description here
// You can write your code in this editor
x = (global.screen.width * 0.46) + (global.screen.size * (20 + sprite_get_width(spr_card_base_1x)) * (position - 2))
if holder == "player" {
	y = global.screen.height * 0.75	
} else if holder == "enemy" {
	y = global.screen.height * 0.05
}
