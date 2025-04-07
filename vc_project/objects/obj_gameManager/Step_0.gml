switch (state){
	case ("initial"):
		audio_stop_all()
		difficulty = global.difficulty
		win_condition = global.win_condition[difficulty]
		instance_create_depth(0,0,0,obj_bgBack)
		instance_create_depth(mouse_x,mouse_y,-10,obj_cursor)
		
		for (var i = 0; i < 2; i++){
			show_debug_message("button made")
			_button = instance_create_depth(button_x + (i+1) * 150,button_y,-7,obj_decide)
			show_debug_message(_button)
			temp_counter = i
			with(_button){
				button_index = other.button_array[other.temp_counter]
			}
		}
		
		if(difficulty>=3){
			instance_create_depth(50,button_y,-7,obj_better)
		}
		
		if(difficulty >=4){
			instance_create_depth(button_x -50,button_y,-7,obj_check)
		}
		
		instance_create_depth(room_width - 800,0,-7,obj_board)
		instance_create_depth(0,0,-3,obj_bg)
		instance_create_depth(633,29,-8,obj_rule)
		
		//instance_create_depth(150,200,-1,obj_character)
		current_character = generate_character(character_stop_x,character_stop_y,character_speed)
		
		
		create_job_opening(job_number[difficulty],job_x,job_y,job_spacing,difficulty,job_array)
		ask = false
		
		audio_play_sound(stormgame_theme,5,true)
		
		state = "game"
		break;
	
	case "game":
		
		if(ask){
			var text = "if see this, then error"
			//show_debug_message("ask a question!")
			if (keyboard_check_pressed(ord("1")) || keyboard_check_pressed(ord("2"))){
				
				if(keyboard_check_pressed(ord("1"))){
					text = "I am "
					text += current_character.characteristic[? "sex"][0]
					text += "."
				}else{
					text = "I am from "
					text += current_character.characteristic[? "nation"][0]
					text += "."
				}
				
				create_temp_text(current_character.sprite_width/2 + current_character.x - 50,current_character.y + 200,-2,text)
				show_debug_message(text)
			}
			
		}
		
		if(current_character == noone){
			current_character = generate_character(character_stop_x,character_stop_y,character_speed)
		}
		
		if(global.hp <= 0){
			global.recent = global.point
			global.highest_score[global.difficulty] = max(global.highest_score[global.difficulty],global.point)
			room_goto(rm_lose)
		}
		
		if(global.point >= win_condition){
			if(keyboard_check_pressed(vk_space)){
				global.recent = global.point
				global.highest_score[global.difficulty] = max(global.highest_score[global.difficulty],global.point)
				room_goto(rm_win)
			}
		}
		
		text_alpha -= alpha_speed
		
		if(text_alpha > 1 || text_alpha < 0){
			alpha_speed = -alpha_speed
		}
		
		break;
	
}

if(current_character != noone){
	//show_debug_message("character" + string(current_character.ranking))
}