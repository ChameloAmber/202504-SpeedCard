/// @description Insert description here
// You can write your code in this editor
useSprite = noone
posX = floor((global.screen.width * 0.46) - (global.screen.size * (((20 + sprite_get_width(spr_card_base_1x)) * 2) + 10)))
posYPlayer = floor(global.screen.height * 0.75) - (10 * global.screen.size)
posYEnemy = floor(global.screen.height * 0.05) - (10 * global.screen.size)

if global.screen.size == 1 {
	useSprite = spr_card_holder_1x
} else {
	useSprite = spr_card_holder_2x
}