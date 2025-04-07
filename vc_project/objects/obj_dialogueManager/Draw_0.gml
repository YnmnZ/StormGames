draw_sprite(spr_dialogueBG,0,0,0)




switch(state){
	case "initial":
		draw_set_alpha(screen_alpha)
		draw_set_color(c_black)
		draw_rectangle(0,0,room_width,room_height,0)
		draw_set_alpha(1)
		break;
	
	case "dialogue":
		draw_sprite(spr_boss,0,boss_x,0)
		draw_set_font(fnt_dialogue)
		draw_set_valign(fa_middle)
		if(show_bubble){
			draw_sprite(spr_box,0,0,0)
			draw_text_ext(160,380,text[global.difficulty][text_tracker],40,500)
		}
		
		if(show_contract){
			draw_sprite(spr_contract,0,0,0)
		}

		draw_set_font(fnt_defaultText)
		draw_set_valign(fa_top)


}