/// @description Insert description here
// You can write your code in this editor

if (ms == 0) {
	ms = 60;
	seconds -= 1;
}

if (seconds == -1) {
	seconds = 59;
	minutes -= 1;
}

if(minutes >= 0){
	ms -= 1;
}

