#region scoring HUD

draw_set_alpha(0.5)
draw_set_color(c_black)
draw_rectangle(0,0,room_width,32*5,false)

draw_set_alpha(1)
draw_set_font(fnt_hud)
draw_set_valign(fa_middle)

draw_set_halign(fa_left)
draw_set_color(c_blue)
draw_text(64, 80, (string_repeat("0", 6-string_length(string(score_p1)))) + string(score_p1))

draw_set_halign(fa_right)
draw_set_color(c_red)
draw_text(room_width - 64, 80, (string_repeat("0", 6-string_length(string(score_p2)))) + string(score_p2))

#endregion