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
	
	var f = working_directory + "\\notes\\dictionary\\dictionary.txt";
	var list = ds_list_create();
	
	if(file_exists(f)) {
		var file = file_text_open_read(f);
		
		while (!file_text_eof(file)) {
			ds_list_add(list, string_upper(file_text_read_string(file)));
			file_text_readln(file);
		}
		file_text_close(file);
	}
	
	#endregion
	
	#region update score
	/*
	var p1_curr_word;
	var p2_curr_word;
	
	if(ds_list_find_index(list ,p1_curr_word) != -1) {
		score_p1 += 1;	
	}
	
	if(ds_list_find_index(list, p2_curr_word) != -1) {
		score_p2 += 1;	
	}
	*/
	
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
	
	if		_player == 1 { 
		word_p1 = [0, 0, 0, 0, 0, 0] 
		obj_goal_p1_1.occupied = false
		obj_goal_p1_2.occupied = false
		obj_goal_p1_3.occupied = false
		obj_goal_p1_4.occupied = false
		obj_goal_p1_5.occupied = false
		obj_goal_p1_6.occupied = false
		}
	else if _player == 2 {
		word_p2 = [0, 0, 0, 0, 0, 0]
		obj_goal_p1_1.occupied = false
		obj_goal_p2_2.occupied = false
		obj_goal_p2_3.occupied = false
		obj_goal_p2_4.occupied = false
		obj_goal_p2_5.occupied = false
		obj_goal_p2_6.occupied = false
		
		}
	
	
	#endregion
}