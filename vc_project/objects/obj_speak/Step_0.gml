y -= v_speed
text_alpha -= 0.015
if(text_alpha <= 0){
	instance_destroy()
	show_debug_message("deleted")
}
show_debug_message(speak)