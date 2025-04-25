// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_card_field_remove(_slot){
	if (global.field[_slot].card != -1) {
		if global.field[_slot].card.owner == "player" {
			array_push(global.playerPile.discard, global.field[_slot].card)
		} else if global.field[_slot].card.owner == "enemy" {
			array_push(global.enemyPile.discard, global.field[_slot].card)	
		}
		global.field[_slot].card = -1
	}
}