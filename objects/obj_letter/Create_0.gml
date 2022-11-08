randomize()
//letter = choose("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "?")
//following = pointer_null

letter_num = irandom(98)

#region probability

if		( 0 <= letter_num and letter_num < 12) { letter = "E" } // 12
else if (12 <= letter_num and letter_num < 21) { letter = "A" } // 9
else if (21 <= letter_num and letter_num < 30) { letter = "I" } // 9
else if (30 <= letter_num and letter_num < 38) { letter = "O" } // 8
else if (38 <= letter_num and letter_num < 44) { letter = "T" } // 6
else if (44 <= letter_num and letter_num < 50) { letter = "R" } // 6
else if (50 <= letter_num and letter_num < 56) { letter = "N" } // 6
else if (56 <= letter_num and letter_num < 60) { letter = "U" } // 4
else if (60 <= letter_num and letter_num < 64) { letter = "S" } // 4
else if (64 <= letter_num and letter_num < 68) { letter = "L" } // 4
else if (68 <= letter_num and letter_num < 72) { letter = "D" } // 4
else if (72 <= letter_num and letter_num < 75) { letter = "G" } // 3
else if (75 <= letter_num and letter_num < 77) { letter = "B" } // 2
else if (77 <= letter_num and letter_num < 79) { letter = "C" } // 2
else if (79 <= letter_num and letter_num < 81) { letter = "M" } // 2
else if (81 <= letter_num and letter_num < 83) { letter = "P" } // 2
else if (83 <= letter_num and letter_num < 85) { letter = "F" } // 2
else if (85 <= letter_num and letter_num < 87) { letter = "H" } // 2
else if (87 <= letter_num and letter_num < 89) { letter = "V" } // 2
else if (89 <= letter_num and letter_num < 91) { letter = "W" } // 2
else if (91 <= letter_num and letter_num < 93) { letter = "Y" } // 2
else if (93 <= letter_num and letter_num < 94) { letter = "K" } // 1
else if (94 <= letter_num and letter_num < 95) { letter = "J" } // 1
else if (95 <= letter_num and letter_num < 96) { letter = "X" } // 1
else if (96 <= letter_num and letter_num < 97) { letter = "Q" } // 1
else if (97 <= letter_num and letter_num < 98) { letter = "Z" } // 1
else { letter = "?" }

#endregion

#region scoring

switch (letter) {
	case "A":
	case "E":
	case "I":
	case "L":
	case "N":
	case "O":
	case "R":
	case "S":
	case "T":
	case "U":
		point = 1
	break;
	case "G":
	case "D":
		point = 2
	break;
	case "B":
	case "C":
	case "M":
	case "P":
		point = 3
	break;
	case "F":
	case "H":
	case "V":
	case "W":
	case "Y":
		point = 4
	break;
	case "K":
		point = 5
	break;
	case "J":
	case "X":
		point = 8
	break;
	case "Q":
	case "Z":
		point = 10;
	break;
	default:
		point = 0
	break;
}

#endregion

following = self
mspd = 0
follow_dist = 64
col = c_white
