#region scoring HUD
if(room == Game){
	draw_set_alpha(0.75)
	draw_set_color(c_black)
	draw_rectangle(0,0,room_width,32*4,false)

	draw_set_alpha(1)
	draw_set_font(fnt_hud)
	draw_set_valign(fa_middle)

	draw_set_halign(fa_left)
	draw_set_color(c_blue)
	draw_text(32, 32*1.0, (string_repeat("0", 6-string_length(string(score_p1)))) + string(score_p1))
	draw_text(32, 32*2, ("WASD: move, Q: drop, E: pick up"))
	draw_text(32, 32*3, ("SPACEBAR: Change Word"))

	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(room_width/2, 32, string(minutes) + ":" + string(seconds));

	draw_set_halign(fa_right)
	draw_set_color(c_red)
	draw_text(room_width - 32, 32*1.0, (string_repeat("0", 6-string_length(string(score_p2)))) + string(score_p2))
	draw_text(room_width - 32, 32*2, ("ARROWS: move, ENTER: drop, R_SHIFT: pick up"))
	draw_text(room_width - 40, 32*3, ("SPACEBAR: Change Word"))
	
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text(room_width/2 + 48, 32*3, (string(dictionary_set)))
	
	
}

if (room == Scores) {
	draw_set_font(fnt_title)
	draw_set_valign(fa_center)
	draw_set_halign(fa_middle)
<<<<<<< HEAD
//<<<<<<< HEAD
	draw_set_color(c_red)
	draw_text(room_width / 1.5, room_height / 2 - 100, "GAME OVER")
//=======
	draw_set_color(c_white)
	draw_text(room_width / 2, room_height / 2 - 150, "GAME OVER")
//>>>>>>> 00e0d6aa0f55526bf103f82e5835b3497bab5e8a
	// TODO: scores
	draw_set_color(c_white)
	draw_text(room_width / 1.5, room_height / 2 + 70, "Player 1: "+ string(score_p1))
	draw_text(room_width / 1.5, room_height / 2 + 130, "Player 2: " + string(score_p2))
	draw_text(room_width / 1.5, room_height / 2 + 200, "Press SPACEBAR to play again")
	
//<<<<<<< HEAD
	if keyboard_check_pressed(vk_space){
		room_goto(Title)
	}
//=======
	draw_text(room_width / 2, room_height / 2 + 100, "Player 1: " + string(score_p1))
	draw_text(room_width / 2, room_height / 2 + 200, "Player 2: " + string(score_p2))
//>>>>>>> 00e0d6aa0f55526bf103f82e5835b3497bab5e8a
=======

	draw_set_color(c_white)
	draw_text(room_width / 2, room_height / 2 - 150, "GAME OVER")
	draw_set_color(c_white)
	draw_text(room_width / 1.5, room_height / 2 + 70, "Player 1: "+ string(score_p1))
	draw_text(room_width / 1.5, room_height / 2 + 130, "Player 2: " + string(score_p2))
	draw_text(room_width / 1.5, room_height / 2 + 200, "Press any key to play again")

	if keyboard_check_pressed(vk_anykey){
		room_goto(Title)
	}
>>>>>>> de4453c0f770400e2248d6dc044fbd439ba2d87f
}


#endregion

#region debug word HUD

if (room == Game and debug == true){
	draw_set_font(fnt_hud)

	draw_set_halign(fa_left)
	draw_set_color(c_blue)
	//draw_text(64, room_height - 80, (string_repeat("_", curr_word_len-string_length(word_p1))) + word_p1)
	draw_text(64, room_height - 80, string(word_p1))

	draw_set_halign(fa_right)
	draw_set_color(c_red)
	//draw_text(room_width - 64, room_height - 80, (string_repeat("_", curr_word_len-string_length(word_p2))) + word_p2)
	draw_text(room_width - 64, room_height - 80, string(word_p2))
}


#endregion