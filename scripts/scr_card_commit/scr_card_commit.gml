// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_card_commit(_player, _positionHand, _positionField){
	// Check range
	var valueHand = global.playerHand[_positionHand].cardInstance.card.number
	var valueField = global.field[_positionField].card.number
	var card = global.playerHand[_positionHand].cardInstance
	if _player == "enemy" {
		valueHand = global.enemyHand[_positionHand].cardInstance.card.number
		card = global.enemyHand[_positionHand].cardInstance
	}
	
	if scr_card_range_check(_player, valueHand, valueField) {
		// Commit card
		card.signal = "commit"
		card.target = _positionField
		// Player case
		if _player == "player" {
			global.controller.cardSelected = -1
		}
	}
}