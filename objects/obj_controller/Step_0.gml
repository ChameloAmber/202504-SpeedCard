/// @description Insert description here
// You can write your code in this editor
scr_player_get_input()

if buttonCardDrawPressed {
	scr_card_player_draw()
}

if buttonCard1Pressed {
	scr_player_select_card(0)
}
if buttonCard2Pressed {
	scr_player_select_card(1)
}
if buttonCard3Pressed {
	scr_player_select_card(2)
}
if buttonCard4Pressed {
	scr_player_select_card(3)
}
if buttonCard5Pressed {
	scr_player_select_card(4)
}

if buttonField1Pressed {
	scr_player_select_field(0)
}
if buttonField2Pressed {
	scr_player_select_field(1)
}
if buttonField3Pressed {
	scr_player_select_field(2)
}

// Debug only - Remove this in live
if buttonCardResetPressed {
	scr_card_place("neutral", -1, 0)
	scr_card_place("neutral", -1, 1)
	scr_card_place("neutral", -1, 2)
}