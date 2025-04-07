// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_temp_text(create_x,create_y,create_depth,input){
	var created = instance_create_depth(create_x,create_y,create_depth,obj_speak)
	created.speak = input
}