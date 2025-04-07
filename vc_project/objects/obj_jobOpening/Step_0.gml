
top_left_x = x - sprite_width / 2
top_left_y = y - sprite_height / 2
gen_x = top_left_x+8
gen_y = top_left_y+50

switch(state){
	case "gen":
		e_timer_max = expire_timer
		image_index = opening_type
		x -= h_speed
		if(x<= obj_gameManager.job_x){
			x = obj_gameManager.job_x
			state = "game"
		}
		
		break;
	
	case "game":
		if(expire_timer>0){
			expire_timer--
		}
		
		if(expire_timer <= 0 && opening_type = 2){
			global.hp -= 1
			if(obj_cursor.job_selected == self){
				obj_cursor.job_selected = noone
				instance_destroy(obj_effectJobSelect)
			}
			fill_job_opening(self,obj_gameManager.job_y,obj_gameManager.job_spacing,obj_gameManager.difficulty,obj_gameManager.job_array)
		}
		
		break
		
	case "destroy":
		
		x+= 10
		if(x>room_width){
			instance_destroy()
		}
		
		break
}