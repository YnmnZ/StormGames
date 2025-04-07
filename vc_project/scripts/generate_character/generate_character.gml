function generate_character(target_x,target_y,c_speed){
	var _character = instance_create_depth(-500,target_y,-1,obj_character)
	with(_character){
		h_speed = other.character_speed
		stop_x = other.character_stop_x
	}
	return _character
}