// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_card_player_draw(){
	for (var i = 0; i < 5; i++) {
		if (global.playerHand[i].cardInstance == -1) {
			if array_length(global.playerPile.draw) <= 0 {
				// Reshuffle
				array_copy(global.playerPile.draw, 0, global.playerPile.discard, 0, array_length(global.playerPile.discard))
				global.playerPile.discard = []
				global.playerPile.draw = array_shuffle(global.playerPile.draw)
			}
			global.playerHand[i].cardInstance = instance_create_layer(global.screen.width, global.screen.height * 0.75, layer_get_id("Card"), obj_card, {card: array_pop(global.playerPile.draw), holder: "player", position: i})
			return
		}
	}
}