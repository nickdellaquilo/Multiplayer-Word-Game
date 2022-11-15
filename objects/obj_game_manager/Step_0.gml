if(room == Game){
	if !audio_is_playing(sd_gamemusic){
		audio_play_sound(sd_gamemusic,0,true);
	}
	
	if(minutes == 0 && seconds ==0){
		//room = Scores;	
		room_goto(Scores);
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




#region set dictionary library

if keyboard_check_pressed(vk_space){

randomize();

  dictionary_set = choose("crazy","jumps","pizza","sauce","drive","apple",
					"abuse","adult","award","basis","beach","above",
					"while","thine","earth","avoid","alter","agree",
					"adopt","slash","alone","arise","begin","event",
					"faith","dream","blood","admit","awful","blind",
					"break","goals","title","paths","rooms","order","fonts",
					"build","events","error","spawn","grace","mercy","phone",
					"dirty","shirt","money","check","short","watch","touch",
					"knife","think","tools","thank","hoses","start","north",
					"since","train","visit","books","woman"
					

)
}
#endregion