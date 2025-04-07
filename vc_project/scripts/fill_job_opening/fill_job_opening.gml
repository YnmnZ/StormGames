function fill_job_opening(job_old,gen_y,spacing,difficulty,array_to_check){
	
	//remove old from array
	array_delete(array_to_check,array_get_index(array_to_check,job_old),1)
	job_selected = noone
	var create_position = job_old.position
	
	with(job_old){
		state = "destroy"
	}
	
	var _current_job = instance_create_depth(room_width + 100,gen_y + create_position * spacing,-8,obj_jobOpening)
	_current_job.position = create_position
	
	switch(difficulty){
		case 0:
			with(_current_job){
				required_point = irandom(3)
			}
		break
			
		case 1:
			with(_current_job){
				required_point = irandom_range(3,9)
			}
		break;
				
		case 2:
			with(_current_job){
				required_point = irandom_range(5,15)
			}
		break;
			
		case 3:
			with(_current_job){
					
				required_point = irandom_range(7,18)
					
				//is crucial?
				if(irandom(4) == 0){
					opening_type = 1
					required_point += irandom_range(4,8)
				}
					
			}
		break;
			
		case 4:
			with(_current_job){
					
				required_point = irandom_range(9,18)
				//is timed?
				if(irandom(3) == 0){
					opening_type = 2
					required_point -= irandom(5)
					expire_timer = irandom_range(120,180)
					expire_timer *= 60
				}
				//is crucial?
				else if(irandom(4) == 0){
					opening_type = 1
					required_point += irandom_range(6,10)
				}
					
			}
		break;
			
	}
		
	array_push(array_to_check,_current_job)
	show_debug_message("Made a job opening")
	
}