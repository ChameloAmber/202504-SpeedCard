/// @description Insert description here
// You can write your code in this editor
if signal == "commit" {
	signal = ""
	movement = "field"
}

if movement == "idle" {
	x = lerp(x, origin_x, 0.2)
	y = lerp(y, origin_y, 0.2)
	if abs(x - origin_x) < 5 {x = origin_x}
	if abs(y - origin_y) < 5 {y = origin_y}
} else if movement == "field" {
	moveTime += (delta_time / 1000000)
	if holder == "player" {
		x = lerp(origin_x, floor((global.screen.width * 0.21) + (10 * global.screen.size) + ((20 + sprite_get_width(spr_card_base_1x)) * (target+1) * global.screen.size)), dsin(moveTime/global.playerStat.speed*90))
		y = lerp(origin_y, floor(global.screen.height * 0.38), dsin(moveTime/global.playerStat.speed*90))
		if moveTime >= global.playerStat.speed {
			// Check range again
			if scr_card_range_check(holder, card.number, global.field[target].card.number) {
				// Place card
				scr_card_place(holder, position, target)
			} else {
				// Return card
				movement = "idle"
				moveTime = 0
				target = -1
			}
		}
	}
}