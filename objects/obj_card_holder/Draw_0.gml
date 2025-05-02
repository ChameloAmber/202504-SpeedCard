/// @description Insert description here
// You can write your code in this editor

// Draw player
if global.screen.size == 1 {
	// Draw for 1x
	draw_sprite(spr_health_bar_base_1x, 0, posX, posYPlayer)
	draw_sprite_part(spr_health_bar_1x, 0, 0, 0, sprite_get_width(spr_health_bar_1x) * (global.playerStat.hp / global.playerStat.hpMax), sprite_get_height(spr_health_bar_1x), posX, posYPlayer)
	draw_sprite(spr_card_holder_1x, 0, posX, posYPlayer + sprite_get_height(spr_health_bar_1x))
	if global.meta.isMobile == false {
		draw_set_font(fnt_card_holder_1x)
		draw_text(posX + 10 + (sprite_get_width(spr_card_base_1x)/2) - (font_get_size(fnt_card_holder_1x)/2), posYPlayer + sprite_get_height(spr_health_bar_1x) + sprite_get_height(spr_card_holder_1x) + 4, scr_key_to_string(global.controller.mapping.card1))
		draw_text(posX + 30 + (sprite_get_width(spr_card_base_1x)*1) + (sprite_get_width(spr_card_base_1x)/2) - (font_get_size(fnt_card_holder_1x)/2), posYPlayer + sprite_get_height(spr_health_bar_1x) + sprite_get_height(spr_card_holder_1x) + 4, scr_key_to_string(global.controller.mapping.card2))
		draw_text(posX + 50 + (sprite_get_width(spr_card_base_1x)*2) + (sprite_get_width(spr_card_base_1x)/2) - (font_get_size(fnt_card_holder_1x)/2), posYPlayer + sprite_get_height(spr_health_bar_1x) + sprite_get_height(spr_card_holder_1x) + 4, scr_key_to_string(global.controller.mapping.card3))
		draw_text(posX + 70 + (sprite_get_width(spr_card_base_1x)*3) + (sprite_get_width(spr_card_base_1x)/2) - (font_get_size(fnt_card_holder_1x)/2), posYPlayer + sprite_get_height(spr_health_bar_1x) + sprite_get_height(spr_card_holder_1x) + 4, scr_key_to_string(global.controller.mapping.card4))
		draw_text(posX + 90 + (sprite_get_width(spr_card_base_1x)*4) + (sprite_get_width(spr_card_base_1x)/2) - (font_get_size(fnt_card_holder_1x)/2), posYPlayer + sprite_get_height(spr_health_bar_1x) + sprite_get_height(spr_card_holder_1x) + 4, scr_key_to_string(global.controller.mapping.card5))
	}
} else {
	// Draw for 2x
	draw_sprite(spr_health_bar_base_2x, 0, posX, posYPlayer)
	draw_sprite_part(spr_health_bar_2x, 0, 0, 0, sprite_get_width(spr_health_bar_2x) * (global.playerStat.hp / global.playerStat.hpMax), sprite_get_height(spr_health_bar_2x), posX, posYPlayer)
	draw_sprite(spr_card_holder_2x, 0, posX, posYPlayer + sprite_get_height(spr_health_bar_2x))
	if global.meta.isMobile == false {
		draw_set_font(fnt_card_holder_2x)
		draw_text(posX + 20 + (sprite_get_width(spr_card_base_2x)/2) - (font_get_size(fnt_card_holder_2x)/2), posYPlayer + sprite_get_height(spr_health_bar_2x) + sprite_get_height(spr_card_holder_2x) + 4, scr_key_to_string(global.controller.mapping.card1))
		draw_text(posX + 60 + (sprite_get_width(spr_card_base_2x)*1) + (sprite_get_width(spr_card_base_2x)/2) - (font_get_size(fnt_card_holder_2x)/2), posYPlayer + sprite_get_height(spr_health_bar_2x) + sprite_get_height(spr_card_holder_2x) + 4, scr_key_to_string(global.controller.mapping.card2))
		draw_text(posX + 100 + (sprite_get_width(spr_card_base_2x)*2) + (sprite_get_width(spr_card_base_2x)/2) - (font_get_size(fnt_card_holder_2x)/2), posYPlayer + sprite_get_height(spr_health_bar_2x) + sprite_get_height(spr_card_holder_2x) + 4, scr_key_to_string(global.controller.mapping.card3))
		draw_text(posX + 140 + (sprite_get_width(spr_card_base_2x)*3) + (sprite_get_width(spr_card_base_2x)/2) - (font_get_size(fnt_card_holder_2x)/2), posYPlayer + sprite_get_height(spr_health_bar_2x) + sprite_get_height(spr_card_holder_2x) + 4, scr_key_to_string(global.controller.mapping.card4))
		draw_text(posX + 180 + (sprite_get_width(spr_card_base_2x)*4) + (sprite_get_width(spr_card_base_2x)/2) - (font_get_size(fnt_card_holder_2x)/2), posYPlayer + sprite_get_height(spr_health_bar_2x) + sprite_get_height(spr_card_holder_2x) + 4, scr_key_to_string(global.controller.mapping.card5))
	}
}
draw_set_font(fnt_default)

// Draw enemy
if global.screen.size == 1 {
	// Draw for 1x
	draw_sprite(spr_card_holder_1x, 0, posX, posYEnemy)
	draw_sprite(spr_health_bar_base_1x, 0, posX, posYEnemy + sprite_get_height(spr_card_holder_1x))
	draw_sprite_part(spr_health_bar_1x, 1, 0, 0, sprite_get_width(spr_health_bar_1x) * (global.enemyStat.hp / global.enemyStat.hpMax), sprite_get_height(spr_health_bar_1x), posX, posYEnemy + sprite_get_height(spr_card_holder_1x))
} else {
	// Draw for 2x	
	draw_sprite(spr_card_holder_2x, 0, posX, posYEnemy)
	draw_sprite(spr_health_bar_base_2x, 0, posX, posYEnemy + sprite_get_height(spr_card_holder_2x))
	draw_sprite_part(spr_health_bar_2x, 1, 0, 0, sprite_get_width(spr_health_bar_2x) * (global.enemyStat.hp / global.enemyStat.hpMax), sprite_get_height(spr_health_bar_2x), posX, posYEnemy + sprite_get_height(spr_card_holder_2x))
}