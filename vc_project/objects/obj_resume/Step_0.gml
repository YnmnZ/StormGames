switch(state){
	
	case "genX":
		
		x+=in_speed
		if(x >= stop_x){
			x = stop_x
			state = "genY"
		}
		
		break;
	
	case "genY":
		
		y += in_speed
		if(y >= stop_y){
			y = stop_y
			state = "game"
		}
		
		break
	
	case "destroy":
		
		destroy_paper()
		
		break
	
	
	
	
	
	
}