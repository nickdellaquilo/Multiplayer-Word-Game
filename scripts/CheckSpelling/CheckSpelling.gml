function CheckSpelling(_player){
	
	#region get letters
	
	if		_player == 1 
	{
		var goals = obj_goal_p1
		//var curr_word = json_stringify(word_p1)
		var curr_word = string(word_p1[0]) + string(word_p1[1]) + string(word_p1[2]) + string(word_p1[3]) + string(word_p1[4])
	}
	else if _player == 2 
	{
		var goals = obj_goal_p2
		//var curr_word = json_stringify(word_p2)
		var curr_word = string(word_p2[0]) + string(word_p2[1]) + string(word_p2[2]) + string(word_p2[3]) + string(word_p2[4])
	}
	else {  }
	
	for (var i = 0; i < instance_number(goals); i++;)
	{
	    curr_letters[i] = instance_find(goals, i).occupying_letter;
	}
	
	#endregion
	
	#region check spelling & update score
	
	//curr_word = ""
	//for (i = 0; i < 6; i++) {
	//	curr_word += curr_word_arr[i]
	//}
	
	//var word_search = ds_list_find_index(word_set, curr_word)
	////show_debug_message(curr_word + typeof(curr_word))
	//show_debug_message(string(word_search))
	//if(word_search != -1) {
	//	audio_play_sound(sd_correctWord, 0, false)
		
	//	for (var i = 0; i < 4; i++)
	//	{
	//		if		_player == 1 { score_p1 += curr_letters[i].point }
	//		else if _player == 2 { score_p2 += curr_letters[i].point }
	//	}
	//}
	
	//var word_search = ds_list_find_index(word_set, curr_word)
	//show_debug_message(curr_word + typeof(curr_word))
	show_debug_message(string(curr_word))
	show_debug_message(string(dictionary_set))
	if curr_word == dictionary_set {
		audio_play_sound(sd_correctWord, 0, false)
		randomize();

		dictionary_set = choose("CRAZY","JUMPS","PIZZA","SAUCE","DRIVE","APPLE",
		"ABUSE","ADULT","AWARD","BASIS","BEACH","ABOVE",
		"WHILE","THINE","EARTH","AVOID","ALTER","AGREE",
		"ADOPT","SLASH","ALONE","ARISE","BEGIN","EVENT",
		"FAITH","DREAM","BLOOD","ADMIT","AWFUL","BLIND",
		"BREAK","GOALS","TITLE","PATHS","ROOMS","ORDER","FONTS",
		"BUILD","ERROR","SPAWN","GRACE","MERCY","PHONE",
		"DIRTY","SHIRT","MONEY","CHECK","SHORT","WATCH","TOUCH",
		"KNIFE","THINK","TOOLS","THANK","HOSES","START","NORTH",
		"SINCE","TRAIN","VISIT","BOOKS","WOMAN","LIGHT","OVENS", "BIBLE"
		)
		for (var i = 0; i < 4; i++)
		{
			if		_player == 1 { score_p1 += curr_letters[i].point }
			else if _player == 2 { score_p2 += curr_letters[i].point }
		}
	}
	
	#endregion
	
	#region remove letters from goals
	
	if array_length(curr_letters) > 4 {
		for (var j = 0; j < array_length(curr_letters); j++)
		{
			instance_destroy(curr_letters[j]) // can replace with animation/particle destroy script later
		}
	}
	
	#endregion
	
	#region reset word(s)
	
	if		_player == 1 { 
		word_p1 = [0, 0, 0, 0, 0] 
		obj_goal_p1_1.occupied = false
		obj_goal_p1_2.occupied = false
		obj_goal_p1_3.occupied = false
		obj_goal_p1_4.occupied = false
		obj_goal_p1_5.occupied = false
		//obj_goal_p1_6.occupied = false
		num_words -= 5;
		}
	else if _player == 2 {
		word_p2 = [0, 0, 0, 0, 0]
		obj_goal_p2_1.occupied = false
		obj_goal_p2_2.occupied = false
		obj_goal_p2_3.occupied = false
		obj_goal_p2_4.occupied = false
		obj_goal_p2_5.occupied = false
		//obj_goal_p2_6.occupied = false
		num_words -= 5;
		}
	
	
	#endregion
}