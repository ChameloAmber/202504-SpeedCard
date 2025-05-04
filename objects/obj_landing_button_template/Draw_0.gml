/// @description Insert description here
// You can write your code in this editor
draw_self()
if isHovered == true {
	if global.screen.size == 1 {
		// Draw for 1x
		if isHalf {
			draw_sprite(spr_landing_button_hover_half_1x, 0, x, y)
		} else {
			draw_sprite(spr_landing_button_hover_1x, 0, x, y)
		}
	} else {
		// Draw for 2x
		if isHalf {
			draw_sprite(spr_landing_button_hover_half_2x, 0, x ,y)
		} else {
			draw_sprite(spr_landing_button_hover_2x, 0, x ,y)
		}
	}
}