// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_card_range_check(_player, _cardValue, _fieldValue){
	var valueRange = global.playerStat.range
	if _player == "enemy" {
		valueRange = global.enemyStat.range
	}
	
	var checkRange = min(abs(_fieldValue - _cardValue), abs(_fieldValue + 10 - _cardValue), abs(_cardValue - _fieldValue), abs(_cardValue + 10 - _fieldValue))
	if checkRange <= valueRange && checkRange != 0 {
		return true
	}
	return false
}