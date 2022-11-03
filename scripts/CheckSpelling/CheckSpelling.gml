function CheckSpelling(_player){
	
	#region get letters
	
	if		_player == 1 { var goals = obj_goal_p1 }
	else if _player == 2 { var goals = obj_goal_p2 }
	else {  }
	
	for (var i = 0; i < instance_number(goals); i++;)
	{
	    curr_letters[i] = instance_find(goals,i).occupying_letter;
	}
	
	#endregion
	
	#region check spelling
	
	#endregion
	
	#region update score
	
	#endregion
	
	#region remove letters from goals
	
	if array_length(curr_letters) > 5 {
		for (var j = 0; j < array_length(curr_letters); j++)
		{
			instance_destroy(curr_letters[j]) // can replace with animation/particle destroy script later
		}
	}
	#endregion
	
	
}