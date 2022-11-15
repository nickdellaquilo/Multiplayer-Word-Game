if(room == Game){
	if !audio_is_playing(sd_gamemusic){
		audio_play_sound(sd_gamemusic,0,true);
	}
	
	if(minutes == 0 && seconds ==0){
		//room = Scores;	
		room_goto(Scores);
		word_p1 = [0, 0, 0, 0, 0];
		word_p2 = [0, 0, 0, 0, 0];
	}
}

else if (room == Scores)
{
	if keyboard_check_pressed(vk_anykey){
		room_goto(Title)
		seconds = 0;
		minutes = 2;
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
}
#endregion