#region follow players

if following != self
{
	p_dis = point_distance(x, y, following.x, following.y)
	if p_dis > follow_dist
	{
		move_dir = point_direction(x, y, following.x, following.y)
		mspd = lerp(mspd, p_dis/25, 0.1)
		hspd = lengthdir_x(mspd, move_dir)
		vspd = lengthdir_y(mspd ,move_dir)
		x += hspd
		y += vspd
	}
}

else if place_meeting(x, y, obj_player1) {
	if obj_player1.follower == pointer_null {
		following = obj_player1;
		obj_player1.follower = self
		col = c_aqua
		audio_play_sound(sd_letterLockedIn,0,false);
	}
}

else if place_meeting(x, y, obj_player2) {
	if obj_player2.follower == pointer_null {
		following = obj_player2 
		obj_player2.follower = self
		col = c_fuchsia
		audio_play_sound(sd_letterLockedIn,0,false);
	}
}


//else if place_meeting(x, y, obj_player_master)
//{
//	if other.follower == pointer_null
//	{
//		following = other
//		other.follower = self
//	}
//}

#endregion

#region go into goal

//if following != self
//{
//	if place_meeting(following.x, following.y, obj_goal)
//	//goal = instance_place(following.x, following.y, obj_goal)
//	//if goal == not noone
//	{
//		new_follow = instance_place(following.x, following.y, obj_goal)
//		if (new_follow.occupied == false) {
//			following.follower = pointer_null
//			following = new_follow
//			new_follow.occupied = true
//			follow_dist = 0
//		}
//	}
//}

if following != self
{
	if ((place_meeting(following.x, following.y, obj_goal_p1)) && (following == obj_player1) && (!obj_player1.pick))
	//goal = instance_place(following.x, following.y, obj_goal)
	//if goal == not noone
	{
		new_follow = instance_place(following.x, following.y, obj_goal)
		
		if (new_follow.occupied == false) {
			audio_play_sound(sd_letterLockedIn,0,false);
			following.follower = pointer_null
			following = new_follow
			col = c_white
			new_follow.occupied = true
			new_follow.occupying_letter = self
			UpdateWord(letter, following.player, following.num)
			follow_dist = 0
		}
	}
	
	if ((place_meeting(following.x, following.y, obj_goal_p2)) && (following == obj_player2) && (!obj_player2.pick))
	//goal = instance_place(following.x, following.y, obj_goal)
	//if goal == not noone
	{
		new_follow = instance_place(following.x, following.y, obj_goal)
		if (new_follow.occupied == false) {
			audio_play_sound(sd_letterLockedIn,0,false);
			following.follower = pointer_null
			following = new_follow
			col = c_white
			new_follow.occupied = true
			new_follow.occupying_letter = self
			UpdateWord(letter, following.player, following.num)
			follow_dist = 0
		}
	}
}

if (following == obj_player1) || (following == obj_player2) {
	if following.drop {
		following.follower = pointer_null
		following.drop = false
		following = self	
		col = c_white
	}
}

if (following != self) && (following != obj_player1) && (following != obj_player2) {
	if (place_meeting(x, y, obj_player1)) && (obj_player1.pick == true) {
		following.occupied = false
		following.occupying_letter = pointer_null
		UpdateWord(0, following.player, following.num)
		following = obj_player1
		obj_player1.follower = self
		col = c_aqua
		audio_play_sound(sd_letterLockedIn,0,false)
		
	}
	
	if (place_meeting(x, y, obj_player2)) && (obj_player2.pick == true) {
		following.occupied = false
		following.occupying_letter = pointer_null
		UpdateWord(0, following.player, following.num)
		following = obj_player2 
		obj_player2.follower = self
		col = c_fuchsia
		audio_play_sound(sd_letterLockedIn,0,false)
	}
}

#endregion