// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init(){
	
	// Check OS
	if os_type == os_android || os_type == os_ios {
		device_mouse_dbclick_enable(false)
	}
	
	var ratio = clamp(floor(min(browser_width / 640, browser_height / 360)), 1, 3)
	global.screen = {
		width: 640 * ratio,
		height: 360 * ratio
	}
	
	window_set_size(640 * ratio, 360 * ratio)
	window_center()
	
	
	randomize()
	
	// Deck
	global.baseDeck = []
	global.playerDeck = []
	global.enemyDeck = []
	
	// Piles
	global.playerPile = {
		draw: [],
		discard: []
	}
	global.enemyPile = {
		draw: [],
		discard: []
	}
	
	// Controller
	global.controller = {
		cardSelected: -1
	}
	
	// Hand & Field
	global.playerHand = [new CardSlotHand(), new CardSlotHand(), new CardSlotHand(), new CardSlotHand(), new CardSlotHand()]
	global.enemyHand = [new CardSlotHand(), new CardSlotHand(), new CardSlotHand(), new CardSlotHand(), new CardSlotHand()]
	global.field = [new CardSlotField(), new CardSlotField(), new CardSlotField()]
	
	// Create 40 cards for player
	for (i = 1; i <= 10; i++) {
		array_push(global.baseDeck, new CardBase(i, "player"))
		array_push(global.baseDeck, new CardBase(i, "player"))
		array_push(global.baseDeck, new CardBase(i, "player"))
		array_push(global.baseDeck, new CardBase(i, "player"))
	}

	// Transfer to player deck
	array_copy(global.playerDeck, 0, global.baseDeck, 0, array_length(global.baseDeck))
	// Transfer from deck to draw pile
	array_copy(global.playerPile.draw, 0, global.playerDeck, 0, array_length(global.playerDeck))
	// Shuffle
	global.playerPile.draw = array_shuffle(global.playerPile.draw)
	
	// Populate starting field
	scr_card_place("neutral", -1, 0)
	scr_card_place("neutral", -1, 1)
	scr_card_place("neutral", -1, 2)
	
	// Create field
	instance_create_layer(0, 0, layer_get_id("Instances"), obj_field, {position: 0})
	instance_create_layer(0, 0, layer_get_id("Instances"), obj_field, {position: 1})
	instance_create_layer(0, 0, layer_get_id("Instances"), obj_field, {position: 2})
}