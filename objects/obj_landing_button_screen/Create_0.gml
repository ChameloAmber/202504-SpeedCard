/// @description Insert description here
// You can write your code in this editor
event_inherited()

sprite1x = spr_landing_screen_1x
sprite2x = spr_landing_screen_2x
row = 2
column = 1
isHalf = true
isColumnSensitive = true
whenClicked = function() {
	room_goto(rm_screen_check)	
}