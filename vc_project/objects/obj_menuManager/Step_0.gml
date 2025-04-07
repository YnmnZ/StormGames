switch(state){
	case "initial":
		state = "game"
		audio_play_sound(stormgame_theme_alt,5,true)
		break;
	
	case "game":
		
		if(keyboard_check_pressed(vk_space)){
			global.point = 0
			global.hp = 5
			global.streak = 0
			global.difficulty = 0
			room_goto(rm_select_stage)
		}
		
		if(keyboard_check_pressed(vk_tab) && global.final_unlock){
			room_goto(rm_credit)
		}
		
		
		text_alpha+=alpha_speed
		if(text_alpha>= 1 || text_alpha <= 0){
			alpha_speed = -alpha_speed
		}
		
		break;
}