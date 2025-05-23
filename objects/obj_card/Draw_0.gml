/// @description Insert description here
// You can write your code in this editor
if global.screen.size == 1 {
	// Draw for size 1
	draw_sprite(spr_card_base_1x, 0, x, y)
	switch card.suit {
		case "red": draw_sprite(spr_card_suit_1x, 0, x, y); break;
		case "blue": draw_sprite(spr_card_suit_1x, 2, x, y); break;
		case "green": draw_sprite(spr_card_suit_1x, 1, x, y); break;
		case "yellow": draw_sprite(spr_card_suit_1x, 3, x, y); break;
	}
	draw_sprite(spr_card_number_1x, card.number - 1, x, y)
	if global.controller.cardSelected == position {
		draw_sprite(spr_card_selected_1x, 0, x, y)
	}
} else {
	// Draw for size 2
	draw_sprite(spr_card_base_2x, 0, x, y)
	switch card.suit {
		case "red": draw_sprite(spr_card_suit_2x, 0, x, y); break;
		case "blue": draw_sprite(spr_card_suit_2x, 2, x, y); break;
		case "green": draw_sprite(spr_card_suit_2x, 1, x, y); break;
		case "yellow": draw_sprite(spr_card_suit_2x, 3, x, y); break;
	}
	draw_sprite(spr_card_number_2x, card.number - 1, x, y)
	if global.controller.cardSelected == position {
		draw_sprite(spr_card_selected_2x, 0, x, y)
	}
}