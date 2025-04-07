draw_self()
draw_set_color(c_black)
draw_set_font(fnt_defaultText)
draw_text(x+name_x,y+name_y,character_name)
draw_text(x+info_x,y+gender_y,gender)
draw_text(x+info_x,y+ethnicity_y,ethnicity)
draw_text(x+age_x,y+age_y,string(age))

if(modified){
	draw_sprite(spr_resumeStamp,0,x,y)
}