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
		var _rand = irandom_range(1, 4)
		var _col = "red"
		switch _rand {
			case 1: _col = "red"; break;
			case 2: _col = "green"; break;
			case 3: _col = "blue"; break;
			case 4: _col = "yellow"; break;
		}
		global.field[_slotDestination].card = new CardBase(irandom_range(1, 10), _col, "neutral")
	}
}