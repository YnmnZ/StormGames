// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function character_leave(character){
	with(character){
		state = "leave"
		h_speed = other.character_speed
		end_x = other.character_end_x
	}
}