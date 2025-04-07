if(ask){
	draw_set_alpha(0.7)
	draw_rectangle_color(mouse_x,mouse_y,mouse_x + 250,mouse_y + 80,c_black,c_black,c_black,c_black,false)
	draw_set_alpha(1)
	draw_set_font(fnt_defaultText)
	draw_set_color(c_white)
	draw_text(mouse_x + 10,mouse_y + 35,"1. What is your sexual orientation?\n2. What is your nationality?")
}

if(global.point >= win_condition){
	draw_set_font(fnt_point)
	draw_set_color(c_red)
	draw_set_alpha(text_alpha)
	draw_text(room_width - 450,room_height - 40,"Press [Space] to finish today's job.")
	draw_set_font(fnt_defaultText)
	draw_set_color(c_black)
	draw_set_alpha(1)
}

draw_set_color(c_white)
draw_set_font(fnt_point)
draw_text(10,5,"Point: " + string(global.point))
draw_text(10,35,"HP: " + string(global.hp))
draw_set_font(fnt_defaultText)