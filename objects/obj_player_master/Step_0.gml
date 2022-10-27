


if ( keyboard_check(key_up)		 and y > top_limit + height ) { vspd = lerp(vspd, -spd, 0.2) }
else if ( keyboard_check(key_down)	and y < bottom_limit - height ) { vspd = lerp(vspd, spd,  0.2) }
else { vspd = 0 }
if ( keyboard_check(key_left)	and x > left_limit	  + width  ) { hspd = lerp(hspd, -spd, 0.2) }
else if ( keyboard_check(key_right)	 and x < right_limit  - width  ) { hspd = lerp(hspd, spd,  0.2) }
else { hspd = 0 }

x += hspd
y += vspd