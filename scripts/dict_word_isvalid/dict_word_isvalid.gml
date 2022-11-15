// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @function dict_word_isvalid(word)
/// @description true/false depending on whether or not argument0, non-case sensitive, is in our dictionary
/// @param {string}

// from https://github.com/zbanack/TSE-dictionary/blob/master/scripts/dict_word_isvalid/dict_word_isvalid.gml

//// convert to upper-case as that's how our words are stored in the .txt files
//var word = string_upper(argument0);
//var len = string_length(word);

//// if the word length is out of range, return false to prevent error
//if (len < global.dict_shortest_word || len > global.dict_longest_word) return false;

//// if we can locate the word in the ds list, based on word length, return true
//if (ds_list_find_index(global.dict_word[len], word) != -1) return true;

//return false;