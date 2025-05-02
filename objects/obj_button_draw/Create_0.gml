/// @description Insert description here
// You can write your code in this editor
x = floor(global.screen.width * 0.8)
posYInfo = floor(global.screen.height * 0.63) + (sprite_get_height(spr_health_bar_base_1x) * global.screen.size)
y = floor(global.screen.height * 0.76)
isHovered = false

if global.screen.size == 1 {
	sprite_index = spr_button_draw_1x
} else {
	sprite_index = spr_button_draw_2x
}