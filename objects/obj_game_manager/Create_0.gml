globalvar debug;
debug = true;

globalvar score_p1;
globalvar score_p2;
score_p1 = 0;
score_p2 = 0;

globalvar word_p1;
globalvar word_p2;
word_p1 = [0, 0, 0, 0, 0];
word_p2 = [0, 0, 0, 0, 0];

globalvar valid_1;
globalvar valid_2;


globalvar num_words;
num_words = 26;

curr_word_len = 6
round_num = 1

globalvar curr_word_len;
curr_word_len = 5;

globalvar round_num;
round_num = 1


globalvar minutes;
minutes = 2;

globalvar seconds;
seconds = 0;

globalvar dictionary_set;
  dictionary_set = "bible"
  
 globalvar word_set;
 word_set = ["crazy","jumps","pizza","sauce","drive","apple",
					"abuse","adult","award","basis","beach","above",
					"while","thine","earth","avoid","alter","agree",
					"adopt","slash","alone","arise","begin","event",
					"faith","dream","blood","admit","awful","blind",
					"break","goals","title","paths","rooms","order","fonts",
					"build","error","spawn","grace","mercy","phone",
					"dirty","shirt","money","check","short","watch","touch",
					"knife","think","tools","thank","hoses","start","north",
					"since","train","visit","books","woman","light","ovens"
					
]


#region word dictionary

//for (var i = 2; i <= 15; i++) {
//var f = working_directory + "\\notes\\dictionary\\dictionary.txt";
//globalvar word_list;
//word_list[i] = ds_list_create();

//if(file_exists(f)) {
//	var file = file_text_open_read(f);
	
//	while (!file_text_eof(file)) {
//		ds_list_add(word_list[i], string_upper(file_text_read_string(file)));
//		file_text_readln(file);
//	}
//	file_text_close(file);
//}
//}
/*
var f = working_directory + "\\notes\\dictionary\\dictionary.txt";
globalvar word_list;
word_list = ds_list_create();
//show_message("Hello");
if(file_exists(f)) {
	//show_message("Hello");
	var file = file_text_open_read(f);
	
	while (!file_text_eof(file)) {
		ds_list_add(word_list, string_upper(file_text_read_string(file)));
		file_text_readln(file);
	}
	file_text_close(file);
}

show_debug_message(string(word_list))
*/
#endregion


