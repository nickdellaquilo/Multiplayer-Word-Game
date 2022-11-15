// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script7(){

var struct = { 
		
		name: curr_word,
		given: "",
		
		toString: function() {
			for (var i = 0; i < 4; i++){
			 self.given += self.name[i]
			}
			 return self.given
		}
	
	};

}