draw_sprite(spr_selectDifficulty,0,0,0)
draw_set_color(c_black)

draw_set_font(fnt_difficulty)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(room_width/2,300,string(global.difficulty))
draw_text(1000,600,string(global.highest_score[global.difficulty]))
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_defaultText)


draw_text(rule_x,rule_y,rule[global.difficulty])