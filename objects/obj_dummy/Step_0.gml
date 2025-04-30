/// @description Insert description here
// You can write your code in this editor
x += dirx
y += diry

if (x + sprite_width >= global.screen.width && dirx == 1) || (x <= 0 && dirx == -1) {
	dirx = -dirx
}

if (y + sprite_height >= global.screen.height && diry == 1) || (y <= 0 && diry == -1) {
	diry = -diry	
}