if(keyboard_check_pressed(vk_space)){
	if(image_tracker < array_length(load_tutorial)-1){
		image_tracker++
	}else{
		room_goto(rm_game)
	}
}

if(keyboard_check_pressed(vk_escape)){
	room_goto(rm_game)
}