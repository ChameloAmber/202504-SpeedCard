/// @description Insert description here
// You can write your code in this editor

draw_text(20, 20, string("X: {0},{1},{2},{3},{4} | Y: {5},{6},{7},{8},{9}", lastTapX[0], lastTapX[1], lastTapX[2], lastTapX[3],lastTapX[4], lastTapY[0], lastTapY[1], lastTapY[2], lastTapY[3], lastTapY[4]))
draw_text(20, 40, string("Screen Size: {0}, {1}", global.screen.width, global.screen.height))
draw_text(20, 60, string("GUI Size: {0}, {1}", display_get_gui_width(), display_get_gui_height()))
draw_text(20, 80, string("Tilt: {0}, {1}, {2}", device_get_tilt_x(), device_get_tilt_y(), device_get_tilt_z()))

draw_text(device_mouse_x_to_gui(0) - 40, device_mouse_y_to_gui(0) - 40, string("MOU: {0}, {1}", mouse_x, mouse_y))
draw_text(device_mouse_x_to_gui(0) - 40, device_mouse_y_to_gui(0) - 20, string("GUI: {0}, {1}", device_mouse_x_to_gui(0), device_mouse_y_to_gui(0)))

draw_text(ceil(display_get_gui_width() * 0.9), 20, string("FPS: {0}", fps))