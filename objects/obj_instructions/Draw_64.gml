/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1)
draw_set_font(fnt_game)

//instructions
draw_sprite(spr_alphabet, 8,  48*14,  70*3)//i
draw_sprite(spr_alphabet, 13, 48*15,  70*3)//n
draw_sprite(spr_alphabet, 18, 48*16,  70*3)//s
draw_sprite(spr_alphabet, 19, 48*17,  70*3)//t
draw_sprite(spr_alphabet, 17, 48*18,  70*3)//r
draw_sprite(spr_alphabet, 20,  48*19,  70*3)//u
draw_sprite(spr_alphabet, 2,  48*20,  70*3)//c
draw_sprite(spr_alphabet, 19,  48*21,  70*3)//t
draw_sprite(spr_alphabet, 8, 48*22,  70*3)//i
draw_sprite(spr_alphabet, 14, 48*23,  70*3)//o
draw_sprite(spr_alphabet, 13, 48*24,  70*3)//n
draw_sprite(spr_alphabet, 18, 48*25,  70*3)//s


	draw_set_halign(fa_right)
	draw_set_color(c_blue)
	draw_text(540, 20*18, ("Player  1"))
	draw_text(540, 20*20, ("WASD:  Move"))
	draw_text(540, 20*22, ("Hold  Q:  Drop"))
	draw_text(540, 20*24, ("Hold  E:  Pick Up"))
	draw_text(540, 20*26, ("SPACEBAR:  Change Word"))

	
	draw_set_halign(fa_left)
	draw_set_color(c_red)
	draw_text(room_width -30 , 20*18, ("Player  2"))
	draw_text(room_width -30 , 20*20, ("ARROWS:  Move"))
	draw_text(room_width -30 , 20*22, ("Hold  ENTER:  Drop"))
	draw_text(room_width -30, 20*24, ("Hold  R_SHIFT:  Pick Up"))
	draw_text(room_width -30 , 20*26, ("SPACEBAR:  Change Word"))


	draw_set_halign(fa_center)
	draw_set_color(c_blue)
	
	draw_text(room_width/2+250, 32*20, ("Press  SPACEBAR  to  start"))
	
	