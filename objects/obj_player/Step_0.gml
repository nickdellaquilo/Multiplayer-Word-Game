


if keyboard_check(key_up)	 and y > top_limit	  + height { y -= vspd }
if keyboard_check(key_down)	 and y < bottom_limit - height { y += vspd }
if keyboard_check(key_left)	 and x > left_limit	  + width  { x -= hspd }
if keyboard_check(key_right) and x < right_limit  - width  { x += hspd }
