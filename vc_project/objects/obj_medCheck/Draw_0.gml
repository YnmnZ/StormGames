draw_self()
if(array_length(check_result)>0){
	for(var i = 0; i<array_length(check_result);i++){
		var current_dis = check_result[i]
		draw_set_color(c_black)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_medText)
		draw_text(result_x+x,result_y+y+i*result_gap,current_dis)
		draw_set_font(fnt_defaultText)
		draw_set_valign(fa_top)
	}
}
else{
	draw_set_color(c_black)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_medText)
	draw_text(result_x+x,result_y+y,"Healthy")
	draw_set_font(fnt_defaultText)
	draw_set_valign(fa_top)
}