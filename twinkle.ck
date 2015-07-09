fun void playSong (float volume) {
SinOsc myMelody => dac;
0 => int checkForRest;
/*[60, 60, 67, 67, 69, 69, 67, 
 65, 65, 64, 64, 62, 62, 60, 
 67, 67, 65, 65, 64, 64, 62, 
 67, 67, 65, 65, 64, 64, 62, 
 60, 60, 67, 67, 69, 69, 67, 
 65, 65, 64, 64, 62, 62, 60] */
[76,76,74,69,69,65,65,
 76,76,74,69,69,65,65,
 72,72,70,65,65,62,62,
 72,72,70,65,65,65,65]@=> int melody[];
for (0 => int i; i < melody.size(); i++)
{
	//checkForRest++;
	Std.mtof(melody[i]) => myMelody.freq;
	/*if(checkForRest == 7) {
		0 => checkForRest;
		volume => myMelody.gain;
	    0.6::second => now;
	    0.0 => myMelody.gain;
	    0.6::second => now;
	}
	else {*/
		volume => myMelody.gain;
	    0.25::second => now;
	    //0.0 => myMelody.gain;
	    //0.3::second => now;
	//}
	
	
}
}
playSong(0.5);