/// @description Insert description here
// You can write your code in this editor

draw_text(20, 20, "Player's Draw")
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
}