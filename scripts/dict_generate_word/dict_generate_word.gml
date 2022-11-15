// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// from https://github.com/zbanack/TSE-dictionary/blob/master/scripts/dict_generate_word/dict_generate_word.gml

var len = string_length(valid_1);

// if the word length is out of range, return an empty string to prevent error
if (len < global.dict_shortest_word || len > global.dict_longest_word) return "";

// return the word from a random index in the correct ds list, based of word length
return ds_list_find_value(global.dict_word[len], irandom(ds_list_size(global.dict_word[len]) - 1))