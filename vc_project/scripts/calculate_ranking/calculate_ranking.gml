// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_ranking(characteristic,difficulty){
	//------------Ranking Calculation
	var ranking = 0
	//default difficulty (0) -- observe
	ranking += characteristic[? "bt"][1]
	
	//level 1 -- check profile
	if (difficulty >= 1){
		ranking += characteristic[? "gender"][1] 
		ranking += characteristic[? "eth"][1]
	}
	
	//level 2 -- ask
	if (difficulty >= 2){
		ranking += characteristic[? "sex"][1]
		ranking += characteristic[? "nation"][1]
	}
	
	//level 3 -- more complicated
	if (difficulty >= 3){
		var _age = characteristic[? "age"]
		if(is_string(_age) == false){
			if (_age >= 56){
				ranking += 5
			}
			else if(13 <= _age <= 19){
				ranking += 3
			}
			else if(20 <= _age <= 25 || 40 <= _age <= 55){
				ranking += 2
			}else{
				ranking += 0
			}
		}else{
			ranking += 0
		}
	}
	
	//level 4 -- observe and check
	if(difficulty >= 4){
		//calculate disability-related ranking
		var _major_disability = 0
		var _disability_array = characteristic[? "dis"]
		
		for(var i = 0; i < array_length(_disability_array);i++){
			var _disability_to_check = _disability_array[i][1]
			if (_major_disability < _disability_to_check){
				_major_disability = _disability_to_check
			}
		}
		ranking += _major_disability + array_length(_disability_array) - 1
	}
	
	show_debug_message(ranking)
		
	return ranking
}