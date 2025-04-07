draw_sprite(spr_title,0,0,0)
draw_set_halign(fa_center)
draw_text_color(room_width/2,room_height - 120,"Press [Space] to continue",c_black,c_black,c_black,c_black,text_alpha)

if(global.final_unlock){
	draw_text_color(room_width/2,room_height - 80,"Press [Tab] for credit",c_black,c_black,c_black,c_black,text_alpha)
}

draw_set_halign(fa_left)

draw_self()