// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_screen_adjust(){
	var targetWidth = clamp(browser_width * 0.99, 640, 1920)
	var targetHeight = clamp(browser_height * 0.99, 360, 1080)
	var nativeWidth = 1920
	var nativeHeight = 1080
	
	var ratio = min(targetWidth / nativeWidth, targetHeight / nativeHeight)
	global.screen = {
		width: floor(nativeWidth * ratio),
		height: floor(nativeHeight * ratio),
		size: 1,
		widthActual: browser_width,
		heightActual: browser_height
	}
	if global.screen.width >= 1280 {
		global.screen.size = 2	
	}
	
	window_set_size(global.screen.width, global.screen.height)
	surface_resize(application_surface, global.screen.width, global.screen.height)
	window_center()
}