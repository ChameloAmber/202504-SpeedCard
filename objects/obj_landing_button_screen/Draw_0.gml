/// @description Insert description here
// You can write your code in this editor
draw_self()
if hovered {
	switch global.screen.size {
		case 1:
			draw_sprite(spr_landing_screen_hover_1x, 0, x, y)
			break
		case 2:
			draw_sprite(spr_landing_screen_hover_2x, 0, x, y)
			break
	}
}