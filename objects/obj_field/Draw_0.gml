/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_text(bbox_left, bbox_top-20, string("Field {0}", position+1))
draw_text(x + 14, y + 14, global.field[position].card.number)