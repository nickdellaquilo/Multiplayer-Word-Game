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

else if place_meeting(x, y, obj_player1) { following = obj_player1 }
else if place_meeting(x, y, obj_player2) { following = obj_player2 }


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
	{
		following = instance_place(following.x, following.y, obj_goal)
		follow_dist = 0
	}
}

#endregion