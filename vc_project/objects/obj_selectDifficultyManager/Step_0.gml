selected_difficulty = global.difficulty

if(keyboard_check_pressed(vk_left)){
	if(global.difficulty > 0){
		global.difficulty--
	}
}

if(keyboard_check_pressed(vk_right)){
	if(global.difficulty < global.unlocked_difficulty){
		global.difficulty++
	}
}

if(keyboard_check_pressed(vk_space)||mouse_check_button_pressed(mb_any)){
	global.point = 0
	global.hp = 5
	global.streak = 0
	room_goto(rm_dialogue)
}