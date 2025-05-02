/// @description Insert description here
// You can write your code in this editor
if global.screen.size == 1 {
	// Draw for 1x
	if array_length(global.playerPile.draw) > 0 { 
		draw_sprite(spr_button_draw_1x, 0, x, y)	
	} else {
		draw_sprite(spr_button_draw_1x, 1, x, y)	
	}
	if isHovered {
		draw_sprite(spr_button_draw_hover_1x, 0, x, y)	
	}
} else {
	// Draw for 2x	
	if array_length(global.playerPile.draw) > 0 { 
		draw_sprite(spr_button_draw_2x, 0, x, y)	
	} else {
		draw_sprite(spr_button_draw_2x, 1, x, y)
	}
	if isHovered {
		draw_sprite(spr_button_draw_hover_2x, 0, x, y)	
	}
}

draw_text(x, posYInfo, string("Deck: {0} | Discard: {1}", array_length(global.playerPile.draw), array_length(global.playerPile.discard)))