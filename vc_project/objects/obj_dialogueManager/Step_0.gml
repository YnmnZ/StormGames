switch(state){
	case("initial"):
		
		if(screen_alpha >= 0){
			screen_alpha-=alpha_speed
		}else{
			screen_alpha = 0
			state = "dialogue"
		}
		
		break;
	
	case("dialogue"):
		
		if(boss_x <= 0 && boss_v_speed != 0){
			boss_v_speed = 0
			boss_x = 0
		}
		boss_x-=boss_v_speed
		
		if(boss_x == 0){
			var load_dialogue = text[global.difficulty]
			
			var load_line = load_dialogue[text_tracker]
			//show_debug_message(load_line)
			if(load_line == "*"){
				show_bubble = false
				show_contract = true
			}else{
				show_contract = false
				show_bubble = true
			}
			
			if(keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)){
				if(text_tracker<array_length(load_dialogue)-1){
					text_tracker++
				}else{
					room_goto(rm_tutorial)
				}
			}
		}
		
		break;
}
