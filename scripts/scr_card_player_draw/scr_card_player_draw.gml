// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_card_player_draw(){
	for (var i = 0; i < 5; i++) {
		if (global.playerHand[i].cardInstance == -1) {
			global.playerHand[i].cardInstance = instance_create_layer(0, 0, layer_get_id("Instances"), obj_card_test, {card: array_pop(global.playerPile.draw), position: i})
			return
		}
	}
}