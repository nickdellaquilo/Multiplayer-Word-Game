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
seconds = 30;

globalvar dictionary_set;
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


