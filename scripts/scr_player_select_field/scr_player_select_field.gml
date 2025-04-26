// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_select_field(_index = -1){
	if global.controller.cardSelected != -1 {
		// Compare card
		if (global.field[_index].card.number % 10) + 1 == global.playerHand[global.controller.cardSelected].cardInstance.card.number || 
		global.field[_index].card.number-1 == (global.playerHand[global.controller.cardSelected].cardInstance.card.number % 10) {
			scr_card_place("player", global.controller.cardSelected, _index)
			global.controller.cardSelected = -1
		}
		return
	}
}