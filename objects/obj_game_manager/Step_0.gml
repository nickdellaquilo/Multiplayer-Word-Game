if(room == Game){
	if !audio_is_playing(sd_gamemusic){
		audio_play_sound(sd_gamemusic,0,true);
	}
	
	if(minutes == 0 && seconds ==0){
		room = Scores;	
	}
}

if(room != Game){
	audio_stop_all();	
}

#region spawn letters

//if instance_number(obj_letter < 


#endregion

#region set active slots

 switch round_num
 {
	case 1:
	
	break;
	
	case 2:
	
	break;
	
	case 3:
	
	break;
	
	default:
		room_goto(Scores)
	break;
 }

#endregion

#region check for completed words



#endregion