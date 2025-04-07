// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_job_opening(number_to_create,gen_x,gen_y,spacing,difficulty,array_to_add){
	for (var i = 0; i <= number_to_create - 1; i++){
		var _current_job = instance_create_depth(room_width + 100,gen_y + i * spacing,-8,obj_jobOpening)
		_current_job.position = i
		
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
		
		array_push(array_to_add,_current_job)
		show_debug_message("Made a job opening")
	}
}