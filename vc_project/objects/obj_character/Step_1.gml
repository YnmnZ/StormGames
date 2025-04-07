switch(state){
	case "gen":
	
		if(group == 0){
			//human
			characteristic[? "eth"] = char_dict[? "eth"][irandom(array_length(char_dict[? "eth"])-2)]
			characteristic[? "nation"] = char_dict[? "nation"][irandom(array_length(char_dict[? "nation"])-2)]
			characteristic[? "gender"] = char_dict[? "gender"][irandom(array_length(char_dict[? "gender"])-2)]
			characteristic[? "sex"] = char_dict[? "sex"][irandom(array_length(char_dict[? "sex"])-2)]
			
			if (characteristic[? "gender"] == "Man"){
				characteristic[? "bt"] = char_dict[? "btm"][irandom_range(1,array_length(char_dict[? "bt"])-2)]
			}
			else if(characteristic[? "gender"] == "Woman"){
				characteristic[? "bt"] = char_dict[? "btw"][irandom_range(1,array_length(char_dict[? "bt"])-2)]
			}else{
				characteristic[? "bt"] = char_dict[? "bt"][irandom_range(1,array_length(char_dict[? "bt"])-2)]
			}
		
			while(irandom(1) == 0 && array_length(characteristic[? "dis"]) < disability_max){
				var _disability = char_dict[? "dis"][irandom(array_length(char_dict[? "dis"])-2)]
				while (array_contains(characteristic[? "dis"],_disability)){
					_disability = char_dict[? "dis"][irandom(array_length(char_dict[? "dis"])-2)]
				}
				array_push(characteristic[? "dis"],_disability)
			}
		
			characteristic[? "age"] = irandom_range(13,60)
			
		}else{
			//characteristic[? "eth"] = ["Non-Human",0]
			//characteristic[? "nation"] = ["Non-Human",0]
			//if(group == 1){
			//	//animal
			//	characteristic[? "gender"] = char_dict[? "gender"][irandom(array_length(char_dict[? "gender"])-2)]
			//	characteristic[? "sex"] = char_dict[? "sex"][irandom(array_length(char_dict[? "sex"])-2)]
			//	characteristic[? "bt"] = "Animal"
			//	characteristic[? "age"] = irandom_range(13,60)
			//	while(irandom(1) == 0 && array_length(characteristic[? "dis"]) <= disability_max){
			//		var _disability = char_dict[? "dis"][irandom(array_length(char_dict[? "dis"])-2)]
			//		while (array_contains(characteristic[? "dis"],_disability)){
			//			_disability = char_dict[? "dis"][irandom(array_length(char_dict[? "dis"])-2)]
			//		}
			//		array_push(characteristic[? "dis"],_disability)
			//	}
			//	if(array_length(characteristic[? "dis"]) <= 0){
			//		array_push(characteristic[? "dis"],["No Disability",0])
			//	}
			//}else{
			//	//robot
			//	characteristic[? "age"] = ["Robot",0]
			//	if(irandom(1) == 1){
			//		characteristic[? "gender"] = char_dict[? "gender"][irandom(array_length(char_dict[? "gender"])-2)]
			//		characteristic[? "sex"] = char_dict[? "sex"][irandom(array_length(char_dict[? "sex"])-2)]
			//	}else{
			//		characteristic[? "gender"] = ["Robot",0]
			//		characteristic[? "sex"] = ["Robot",0]
			//	}
				
			//	if(group == 2){
			//		//robot-looking robot
			//		characteristic[? "bt"] = ["Robot",0]
			//	}else{
			//		//human-looking robot
			//		characteristic[? "bt"] = char_dict[? "bt"][irandom_range(1,array_length(char_dict[? "bt"])-2)]
			//	}
			//}
		}
		
		if(array_length(characteristic[? "dis"]) <= 0){
			array_push(characteristic[? "dis"],["No Disability",0])
		}
		
		show_debug_message(ds_map_values_to_array(characteristic))
		
		
		//------------Ranking Calculation
		ranking = calculate_ranking(characteristic,obj_gameManager.difficulty)
		
		mid_x = x + sprite_width/2
		
		var body_type = characteristic[? "bt"][0]
		show_debug_message("BT: " + string(body_type))
		switch(body_type){
			case "Stout":
				char_sprite = spr_stout
				break;
	
			case "Skinny":
				char_sprite = spr_skinny
				break;
	
			case "Muscular (Woman)":
				char_sprite = spr_muscleWoman
				break;
		
			case "Ordinary":
				if(characteristic[? "gender"] == "Man"){
					char_sprite = spr_ordMan
				}else if (characteristic[? "gender"] == "Woman"){
					char_sprite = spr_ordWoman
				}else{
					if(irandom(1) == 0){
						char_sprite = spr_ordMan
					}else{
						char_sprite = spr_ordWoman
					}
				}
				break;
		
			case "Muscular (Man)":
				char_sprite = spr_muscleMan
				break;
		
			case "Slim & Curvy (Woman)":
				char_sprite = spr_slimCurvy
				break;
		}
		
		sprite_index = char_sprite
		
		show_debug_message("DIS: " + string(characteristic[? "dis"]))
		for(var i = 0; i<array_length(characteristic[? "dis"]);i++){
			var dis_name = characteristic[? "dis"][i][0]
			switch(dis_name){
				case "Artificial Arm":
					arm_index = 2
					break;
				case "Missing Arm":
					arm_index = 1
					break;
				case "Artificial Eye":
					eye_index = 2
					break;
				case "Missing Eye":
					eye_index = 1
					break;
			}
			
		}
		
		state = "move"
		break;
	
	case"move":
		
		x += h_speed
		
		if(x >= stop_x){
			x = stop_x
			state = "resume"
		}
		
		break;
		
	case "resume":
		if(obj_gameManager.difficulty >= 1){
			generate_resume(self)
		}
		state = "game"
		break;
		
	case "leave":
		
		x += h_speed
		
		if(x >= end_x){
			x = end_x
			obj_gameManager.current_character = noone
			instance_destroy()
		}
		
		break;
}



















































