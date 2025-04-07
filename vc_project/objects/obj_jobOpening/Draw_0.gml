draw_self()

draw_set_color(c_black)
draw_set_font(fnt_jobOpeningTitle)
draw_text(gen_x, gen_y,gen_name)
draw_set_font(fnt_defaultText)
draw_text(gen_x, gen_y + 25, job_type)
var _text = "Required Diversity Point: " + string(required_point)
draw_text(gen_x, gen_y +50, _text)

if(opening_type == 2){
	draw_set_color(c_white)
	draw_sprite_ext(spr_clock,0,top_left_x+sprite_width-30,top_left_y+sprite_height-40,0.5,0.5,0,c_white,1)
	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_text(top_left_x+sprite_width-30,top_left_y+sprite_height-20,string(ceil(expire_timer/60))+"s")
	draw_set_halign(fa_left)
	draw_set_color(c_blue)
	draw_rectangle(top_left_x+sprite_width,top_left_y+sprite_height,top_left_x+sprite_width+5,(top_left_y+sprite_height- expire_timer * sprite_height/e_timer_max),false)
	draw_set_color(c_white)
}