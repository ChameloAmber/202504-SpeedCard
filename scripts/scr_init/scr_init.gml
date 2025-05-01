// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init(){
	
	// Check OS
	if os_type == os_android || os_type == os_ios {
		device_mouse_dbclick_enable(false)
	}
	scr_screen_adjust()
	
	randomize()
	
	// Deck
	global.baseDeck = []
	global.playerDeck = []
	global.enemyDeck = []
	
	// Stats
	global.playerStat = {
		hp: 100,
		speed: 0.5,
		range: 1,
	}
	
	global.enemyStat = {
		hp: 100,
		speed: 1.2,
		range: 1,
	}
	
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
	
	// Create 40 cards for base deck
	for (i = 1; i <= 10; i++) {
		array_push(global.baseDeck, new CardBase(i, "red", "player"))
		array_push(global.baseDeck, new CardBase(i, "green", "player"))
		array_push(global.baseDeck, new CardBase(i, "blue", "player"))
		array_push(global.baseDeck, new CardBase(i, "yellow", "player"))
	}

	// Transfer to player deck
	array_copy(global.playerDeck, 0, global.baseDeck, 0, array_length(global.baseDeck))
}