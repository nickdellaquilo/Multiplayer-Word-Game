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
		audio_play_sound(sd_letterLockedIn,0,false);
	}
}
else if place_meeting(x, y, obj_player2) {
	if obj_player2.follower == pointer_null {
		following = obj_player2 
		obj_player2.follower = self
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

if following != self
{
	if place_meeting(following.x, following.y, obj_goal)
	//goal = instance_place(following.x, following.y, obj_goal)
	//if goal == not noone
	{
		new_follow = instance_place(following.x, following.y, obj_goal)
		if (new_follow.occupied == false) {
			following.follower = pointer_null
			following = new_follow
			new_follow.occupied = true
			follow_dist = 0
		}
	}
}

#endregion