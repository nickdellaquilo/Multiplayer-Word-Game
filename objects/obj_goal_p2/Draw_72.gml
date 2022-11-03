if occupied { col = c_red }
else { col = c_white }

draw_sprite_ext(spr_goal_temp, 0, x, y, 1, 1, 0, col, 1) 

//event_inherited()