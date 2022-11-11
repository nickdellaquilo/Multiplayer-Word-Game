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
	
	draw_set_halign(fa_right)
	draw_set_color(c_white)
	draw_text(room_width/2, 32*3, (string(dictionary_set)))
	
	
}

if (room == Scores) {
	draw_set_font(fnt_title)
	draw_set_valign(fa_center)
	draw_set_halign(fa_middle)
	draw_set_color(c_black)
	draw_text(room_width / 2, room_height / 2 - 100, "GAME OVER")
	// TODO: scores
}


#endregion

#region debug word HUD

if (room == Game){
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