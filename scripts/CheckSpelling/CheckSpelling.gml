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
	
	#region reset word(s)
	
	if		_player == 1 { word_p1 = [0, 0, 0, 0, 0, 0] }
	else if _player == 2 { word_p2 = [0, 0, 0, 0, 0, 0] }
	obj_goal_p1_1.occupied = false
	obj_goal_p1_2.occupied = false
	obj_goal_p1_3.occupied = false
	obj_goal_p1_4.occupied = false
	obj_goal_p1_5.occupied = false
	obj_goal_p1_6.occupied = false
	
	#endregion
}