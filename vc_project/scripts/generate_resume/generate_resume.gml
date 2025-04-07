function generate_resume(character){
	var ethn = character.characteristic[? "eth"][0]
	var gender = character.characteristic[? "gender"][0]
	var age = character.characteristic[? "age"]
	show_debug_message(ethn)
	var resume = instance_create_depth(-200,300,-5,obj_resume)
	resume.gender = gender
	resume.ethnicity = ethn
	resume.age = age
	with(resume){
		in_speed = 25
		stop_x = 200
		stop_y = 550
	}
}