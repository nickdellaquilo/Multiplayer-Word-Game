function UpdateWord(_letter, _player, _num)
{
	switch _player
	{
		case 1:
		
			word_p1[_num - 1] = _letter
		
		break;
		
		case 2:
		
			word_p2[_num - 1] = _letter
		
		break;
	}
}