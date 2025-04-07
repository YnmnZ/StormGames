if (y>stop_y){
	y-=v_speed
}
else if(y == stop_y){
	y = stop_y
}

if(destroy){
	destroy_paper()
}