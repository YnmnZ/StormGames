draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_font(fnt_difficulty)
draw_text(room_width / 2, room_height / 2 - 200,"You Have Completed Today's Job!")

draw_set_font(fnt_defaultText)
if(global.highest_score[global.difficulty] > global.recent){
	draw_text(room_width / 2, room_height / 2,"You final score is " + string (global.recent))
}
else{
	draw_text(room_width / 2, room_height / 2,"You have achieved new highest score!")
	draw_text(room_width / 2, room_height / 2 + 40,"Your final score is " + string (global.recent))
}

if(global.difficulty >= global.unlocked_difficulty && global.unlocked_difficulty < 4){
	draw_text(room_width / 2, room_height / 2 + 80,"New difficulty unlocked!")
}

if(global.difficulty == 4 && global.final_unlock == false){
	draw_text(room_width / 2, room_height / 2 + 80,"Credit scene unlocked!")
}

draw_text(room_width / 2, room_height / 2 + 200,"Press [Space] to return to Title...")

draw_set_halign(fa_left)
draw_set_valign(fa_top)