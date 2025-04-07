draw_self()

draw_set_color(c_black)
draw_set_font(fnt_ruleText)
var _text_tracker = text_start_y
for(var i = 0; i <= obj_gameManager.difficulty; i++){
	var _text = rules[i]
	var _text_height = string_height(_text)
	draw_text(x+15,_text_tracker,_text)
	_text_tracker +=_text_height
}
draw_set_font(fnt_defaultText)

if (new_rule){
	draw_sprite_ext(spr_new,0,x+sprite_width-50,y,0.8,0.8,-30,c_white,1)
}