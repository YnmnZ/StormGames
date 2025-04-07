// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function difficulty_rise(difficulty_value,difficulty_max){
	if(difficulty_value < difficulty_max){
		difficulty_value ++
		obj_rule.new_rule = true
	}
}