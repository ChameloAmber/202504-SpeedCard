// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_setup(){
	// Clear previous deck
	global.playerPile.draw = []
	global.playerPile.discard = []
	
	// Clear previous fields
	global.field[0].flush()
	global.field[1].flush()
	global.field[2].flush()
	
	// Clear controller
	global.controller.cardSelected = -1
	
	// Copy and shuffle deck
	array_copy(global.playerPile.draw, 0, global.playerDeck, 0, array_length(global.playerDeck))
	global.playerPile.draw = array_shuffle(global.playerPile.draw)
	
	// Populate starting field
	scr_card_place("neutral", -1, 0)
	scr_card_place("neutral", -1, 1)
	scr_card_place("neutral", -1, 2)
	
	// Create field
	instance_create_layer(0, 0, layer_get_id("Base"), obj_field, {position: 0})
	instance_create_layer(0, 0, layer_get_id("Base"), obj_field, {position: 1})
	instance_create_layer(0, 0, layer_get_id("Base"), obj_field, {position: 2})
}