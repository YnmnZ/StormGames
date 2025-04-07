y -= v_speed

if(y+text_height< - 50){
	room_goto(rm_start)
}

if(keyboard_check_pressed(vk_escape)){
	room_goto(rm_start)
}