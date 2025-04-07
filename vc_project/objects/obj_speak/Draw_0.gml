draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_black)
draw_set_font(fnt_speakText)
draw_set_alpha(text_alpha)

draw_rectangle_color(x-string_length(speak)-300,y-20,x+string_length(speak)+300,y+20,c_white,c_white,c_white,c_white,false)
draw_text(x,y,speak)

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_alpha(1)
draw_set_font(fnt_defaultText)