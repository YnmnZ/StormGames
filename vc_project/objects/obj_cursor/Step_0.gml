x = mouse_x
y = mouse_y

if(global.difficulty >= 2 && place_meeting(x,y,obj_character)){
	if(instance_place(x,y,obj_character).state == "game"){
		image_index = 1
		obj_gameManager.ask = true
	}
}
else{
	image_index = 0
	obj_gameManager.ask = false
}

if(interact){
	
	//left mouse button
	if(mouse_check_button_pressed(mb_left)){
	
		//click job to select
		if(place_meeting(x,y,obj_jobOpening)){
			if(instance_place(x,y,obj_jobOpening).state == "game" && (job_selected == noone || (job_selected != instance_nearest(x,y,obj_jobOpening)))){
				job_selected = instance_nearest(x,y,obj_jobOpening)
				instance_destroy(obj_effectJobSelect)
				instance_create_depth(job_selected.x, job_selected.y,-8, obj_effectJobSelect)
				show_debug_message("Selected job change to " + job_selected.gen_name)
			}
		}
	
		//click to remove new tag
		if(place_meeting(x,y,obj_rule)){
			if(obj_rule.new_rule){
				obj_rule.new_rule = false
			}
		}
		
		//medical check
		if(place_meeting(x,y,obj_check) && !instance_exists(obj_medCheck) && obj_gameManager.current_character != noone){
			audio_play_sound(snd_button,10,false)
			var _check = instance_create_depth(510,room_height + 100,-8, obj_medCheck)
			fill_check(_check)
		}
		
		//improve button
		if(place_meeting(x,y,obj_better) && obj_gameManager.current_character != noone){
			if(obj_better.remaining_use > 0){
				audio_play_sound(snd_button,10,false)
				obj_better.remaining_use --
				obj_better.image_index ++
				obj_resume.modified = true
				current_modifier = 5
			}
		}
		
		//click decision button
		if(instance_place(x,y,obj_decide) && obj_gameManager.current_character != noone){
			audio_play_sound(snd_button,10,false)
			var button = instance_place(x,y,obj_decide)
			var decision = button.button_index
			
			if(decision == 1 || (decision == 0 && job_selected != noone)){
				//show_debug_message("leave")
			
				//clean up stuff
				character_leave(obj_gameManager.current_character)
				if(instance_exists(obj_resume)){
					obj_resume.state = "destroy"	
				}
				if(instance_exists(obj_medCheck)){
					obj_medCheck.destroy = true
				}
			
				//check button type
			
				//0: pass,1:deny
				if (decision == 0){
					var point_check = job_selected.required_point
					var character_point = obj_gameManager.current_character.ranking
					
					
					if(character_point + current_modifier < point_check){
						global.hp--
						global.streak = 0
					}else{
						global.point += 100 + (global.streak div 3) * 50
						global.streak ++
						
						fill_job_opening(job_selected,obj_gameManager.job_y,obj_gameManager.job_spacing,obj_gameManager.difficulty,obj_gameManager.job_array)
						job_selected = noone
						instance_destroy(obj_effectJobSelect)
						
					}
				
				}
				
				current_modifier = 0
				
			}
		}
		
	
	}

	//right mouse button
	if(mouse_check_button_pressed(mb_right)){
		job_selected = noone
		instance_destroy(obj_effectJobSelect)
		show_debug_message("Selected job reset")
	
		if(place_meeting(x,y,obj_mark)){
			var _nearest_mark = instance_nearest(x,y,obj_mark)
			array_delete(mark_array,array_get_index(mark_array,_nearest_mark),1)
			instance_destroy(instance_nearest(x,y,obj_mark))
		
			show_debug_message(mark_array)
		}
	}

	//middle to mark
	if(mouse_check_button_pressed(mb_middle) && place_meeting(x,y,obj_board)){
		audio_play_sound(snd_scribble_short,10,false)
		var _mark_made = instance_create_depth(x,y,-9,obj_mark)
		//show_debug_message(string(_mark_made))
		with(_mark_made){
			image_index = other.mark_type
			color = other.mark_color
		}
		array_push(mark_array,_mark_made)
		if(array_length(mark_array)>mark_capacity){
			var _mark_to_delete = array_first(mark_array)
			array_delete(mark_array,0,1)
			show_debug_message(_mark_to_delete)
			instance_destroy(_mark_to_delete)
		}
		//show_debug_message(mark_array)
	
	}
	
	//scroll to change mark type
	if(mouse_wheel_up()){
		mark_ui_alpha = 1
		if (mark_type <= 0){
			mark_type = max_mark_type
		}else{
			mark_type --
		}
	}
	if(mouse_wheel_down()){
		mark_ui_alpha = 1
		if (mark_type >= max_mark_type){
			mark_type = 0
		}else{
			mark_type ++
		}
	}

	if(mark_ui_alpha > 0){
		mark_ui_alpha -= mark_ui_reduction
	}
}

if(job_selected != noone){
	show_debug_message("point check" + string(job_selected.required_point))
}