

// Inherit the parent event
event_inherited();

//key_up    = ord("I")
//key_down  = ord("K")
//key_left  = ord("J")
//key_right = ord("L")
//key_drop  = ord("U")
//key_pick  = ord("O")

key_up    = vk_up
key_down  = vk_down
key_left  = vk_left
key_right = vk_right
key_drop  = vk_return
key_pick  = vk_rshift

if keyboard_check_pressed(vk_up) && keyboard_check_pressed(vk_return){
	
}

//left_limit = room_width * 0.5 + sprite_width
//right_limit = room_width

x = room_width * 0.75
y = room_height * 0.5

col = c_red