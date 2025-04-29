/// @description Insert description here
// You can write your code in this editor

draw_text(20, 20, string("X: {0},{1},{2},{3},{4} | Y: {5},{6},{7},{8},{9}", lastTapX[0], lastTapX[1], lastTapX[2], lastTapX[3],lastTapX[4], lastTapY[0], lastTapY[1], lastTapY[2], lastTapY[3], lastTapY[4]))
draw_text(20, 40, string("Screen Size: {0}, {1}", global.screen.width, global.screen.height))
draw_text(20, 60, string("GUI Size: {0}, {1}", display_get_gui_width(), display_get_gui_height()))

draw_text(device_mouse_x_to_gui(0) - 40, device_mouse_y_to_gui(0) - 80, string("MOU: {0}, {1}", mouse_x, mouse_y))
draw_text(device_mouse_x_to_gui(0) - 40, device_mouse_y_to_gui(0) - 60, string("GUI: {0}, {1}", device_mouse_x_to_gui(0), device_mouse_y_to_gui(0)))

draw_text(ceil(display_get_gui_width() * 0.8), 20, string("FPS: {0}", fps))
/*draw_text(20, 20, "Player's Draw")
for (var i = 0; i < array_length(global.playerPile.draw); i++) {
	draw_text(20 + (floor(i / 20)*40), 40 + ((i*20) % 400), global.playerPile.draw[i].number)	
}

draw_text(160, 20, "Player's Hand")
for (var i = 0; i < array_length(global.playerHand); i++) {
	if (global.playerHand[i].cardInstance == -1) {
		draw_text(160, 40 + (i*20), "[]")
	} else {
		draw_text(160, 40 + (i*20), string("[{0}]", global.playerHand[i].cardInstance))	
	}
}

draw_text(400, 20, "Field")
for (var i = 0; i < array_length(global.field); i++) {
	draw_text(400, 40 + (i*20), global.field[i].card)
}

draw_text(800, 20, "Player's Discard")
for (var i = 0; i < array_length(global.playerPile.discard); i++){
	draw_text(800 + (floor(i / 20)*40), 40 + ((i*20) % 400), global.playerPile.discard[i].number)	
}*/