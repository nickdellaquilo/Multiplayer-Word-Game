if (room == Scores) {
	draw_set_font(fnt_game)
	draw_set_valign(fa_center)
	draw_set_halign(fa_middle)

	draw_set_color(c_red)
	draw_text(room_width / 2, room_height / 2 - 150, "GAME OVER")
	// TODO: scores
	draw_set_color(c_white)
	draw_set_valign(fa_middle);
	if score_p1 > score_p2{
		draw_text(room_width / 1.5 - 300, room_height / 2 + 30, "Player   1   WINS")
		draw_text(room_width / 1.5 - 300, room_height / + 40, string(score_p1))
		draw_text(room_width / 1.5 - 300, room_height / 2 + 200, "Press  SPACEBAR  to  play  again")
	} 
	if score_p2 > score_p1{
		draw_text(room_width / 1.5 - 300, room_height / 2 + 30, "Player   2    WINS")
		draw_text(room_width / 1.5 - 300, room_height / + 40, string(score_p2))
		draw_text(room_width / 1.5 - 300, room_height / 2 + 200, "Press  SPACEBAR  to  play  again")
	}
	
	if score_p1 == score_p2{
		draw_text(room_width / 1.5 - 300, room_height / 2 + 30, "IT  IS  A  TIE")
		draw_text(room_width / 1.5 - 300, room_height / 2 + 200, "Press ENTER  to  play  again")
	}
	
	//draw_text(room_width / 1.5 - 300, room_height / 2 + 100, "Player 2: " + string(score_p2))
	//draw_text(room_width / 1.5 - 300, room_height / 2 + 200, "Press SPACEBAR to play again")
	
}