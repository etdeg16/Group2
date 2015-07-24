fun void playSong (float volume) {
Saxofony myMelody => BPF filter => dac;
0 => int checkForRest;
[76,76,74,69,69,65,65,
 76,76,74,69,69,65,65,
 72,72,70,65,65,62,62,
 72,72,70,65,65,65,65]@=> int melody[];
 880 => filter.freq;
 5 => filter.Q;
for (0 => int i; i < melody.size(); i++)
{
	myMelody.noteOn(1);
	Std.mtof(melody[i]) => myMelody.freq;	
		volume => myMelody.gain;
	    0.25::second => now;	
	myMelody.noteOff(1);
}
}
playSong(0.5);