function UpdateWord(_letter, _player, _num)
{
	switch _player
	{
		case 1:
		
			word_p1[_num - 1] = _letter
			
			for (i = 0; i < 4; i++)
				{
					if word_p1[i] == 0 { break; }
					//show_debug_message("Checked word " + string(_player) + " letter " + string(_num))
					else if i == 3 { CheckSpelling(1) }
				}
		
		break;
		
		case 2:
		
			word_p2[_num - 1] = _letter
			
			for (i = 0; i < 4; i++)
				{
					if word_p2[i] == 0 { break }
					//show_debug_message("Checked word " + string(_player) + " letter " + string(_num))
					else if i == 3 { CheckSpelling(2) }
				}
		
		break;
	}
	
	
	
}