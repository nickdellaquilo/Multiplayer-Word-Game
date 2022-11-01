
/*

if ( keyboard_check(key_up)		 and y > top_limit + height ) { vspd = lerp(vspd, -spd, 0.2) }
else if ( keyboard_check(key_down)	and y < bottom_limit - height ) { vspd = lerp(vspd, spd,  0.2) }
else { vspd = 0 }
if ( keyboard_check(key_left)	and x > left_limit	  + width  ) { hspd = lerp(hspd, -spd, 0.2) }
else if ( keyboard_check(key_right)	 and x < right_limit  - width  ) { hspd = lerp(hspd, spd,  0.2) }
else { hspd = 0 }

x += hspd
y += vspd

*/

event_inherited();

if keyboard_check(key_up){        // 90 degree angle to move up
    move_dir = 90
    if keyboard_check(key_left){
        move_dir += 45                // +45 for up-left
    }else
    if keyboard_check(key_right){
        move_dir -= 45                // -45 for up-right
    }
}else
if keyboard_check(key_down){
    move_dir = 270                    // 270 degree angle to move down
    if keyboard_check(key_left){
        move_dir -= 45                // -45 for down-left
    }else
    if keyboard_check(key_right){
        move_dir += 45                // +45 for down-right
    }
}else{
    if keyboard_check(key_left){
        move_dir = 180                // 180 degree angle to move left
    }else
    if keyboard_check(key_right){
        move_dir = 0                // 0 degrees to move right
    }
}
hspd = lengthdir_x(mspd,move_dir)    // find x&y speed by using angle and base speed
vspd = lengthdir_y(mspd,move_dir)

image_angle = lerp(image_angle, move_dir-90, 0.5)

if keyboard_check(key_up)
or keyboard_check(key_left)
or keyboard_check(key_down)
or keyboard_check(key_right){        // if pressing any move keys, move player!
    MoveCollide()
}