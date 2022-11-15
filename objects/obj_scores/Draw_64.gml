if (room == Scores) {
	draw_set_font(fnt_title)
	draw_set_valign(fa_center)
	draw_set_halign(fa_middle)

	draw_set_color(c_red)
	draw_text(room_width / 2, room_height / 2 - 150, "GAME OVER")
	// TODO: scores
	draw_set_color(c_white)
	draw_set_valign(fa_middle);
	draw_text(room_width / 1.5 - 300, room_height / 2 + 30, "Player 1: "+ string(score_p1))
	draw_text(room_width / 1.5 - 300, room_height / 2 + 100, "Player 2: " + string(score_p2))
	draw_text(room_width / 1.5 - 300, room_height / 2 + 200, "Press SPACEBAR to play again")
	

	if keyboard_check_pressed(vk_space){
		room_goto(Title)
	}
}