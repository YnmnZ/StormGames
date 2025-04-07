if(keyboard_check_pressed(vk_space)){
	if(global.difficulty >= global.unlocked_difficulty && global.unlocked_difficulty < 4){
		global.unlocked_difficulty ++
	}
	
	if(global.difficulty == 4 && global.final_unlock == false){
		global.final_unlock = true
	}
	audio_stop_all()
	room_goto(rm_start)
}