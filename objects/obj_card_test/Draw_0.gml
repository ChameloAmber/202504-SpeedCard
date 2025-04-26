/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_text(x + 14, y + 14, card.number)
switch position {
	case 0:
		draw_text(bbox_left + 4, bbox_bottom + 4, "Q")
		break
	case 1:
		draw_text(bbox_left + 4, bbox_bottom + 4, "W")
		break
	case 2:
		draw_text(bbox_left + 4, bbox_bottom + 4, "E")
		break
	case 3:
		draw_text(bbox_left + 4, bbox_bottom + 4, "R")
		break
	case 4:
		draw_text(bbox_left + 4, bbox_bottom + 4, "T")
		break
}

if global.controller.cardSelected == position {
	draw_sprite(spr_card_selected, 0, x, y)
	draw_text(bbox_left + 4, bbox_bottom + 24, "Selected")
}