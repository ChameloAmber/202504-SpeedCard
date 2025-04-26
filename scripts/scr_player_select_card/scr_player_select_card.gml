// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_select_card(_index = -1){
	if global.controller.cardSelected == _index {
		global.controller.cardSelected = -1
		return
	}

	if global.playerHand[_index].cardInstance != -1 {
		global.controller.cardSelected = _index
		return
	}
}