function fill_check(check){
	var to_check = obj_gameManager.current_character
	var disability = to_check.characteristic[? "dis"]
	var dis_dict = ["Autism","Cancer","Radiation","Genetic Disease"]
	var output = []
	
	for(var i = 0; i < array_length(disability); i++){
		var dis_name = disability[i]
		if (array_contains(dis_dict,dis_name)){
			array_push(output,dis_name)
		}
	}
	
	check.check_result = output
	
}