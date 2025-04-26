// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_card_place(_sourcePlayer, _slotSource, _slotDestination){
	if global.field[_slotDestination].card != -1 {
		// Remove card first
		scr_card_field_remove(_slotDestination)
	}
	if _sourcePlayer == "player" {
		global.field[_slotDestination].card = global.playerHand[_slotSource].cardInstance.card
		instance_destroy(global.playerHand[_slotSource].cardInstance)
		global.playerHand[_slotSource].cardInstance = -1
	} else if _sourcePlayer == "enemy" {
		global.field[_slotDestination].card = global.enemyHand[_slotSource].cardInstance.card	
		instance_destroy(global.enemyHand[_slotSource].cardInstance)
		global.enemyHand[_slotSource].cardInstance = -1
	} else if _sourcePlayer == "neutral" {
		global.field[_slotDestination].card = new CardBase(irandom_range(1, 10), "neutral")
	}
}