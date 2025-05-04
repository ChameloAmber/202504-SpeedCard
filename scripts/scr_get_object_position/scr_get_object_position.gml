// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_object_position(_component = "origin", _row = 0, _column = 0){
	/*
		List of components
		- origin (default)
		- landing
	*/
	
	
	switch _component {
		case "origin":
			return [0, 0]
		case "landing-button-main":
			return [
				floor(global.screen.width * (0.2 + (0.32 * _column))),
				floor(global.screen.height * (0.3 + (0.2 * _row)))
			]
	}
}