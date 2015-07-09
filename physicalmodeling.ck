/*ModalBar myBar => dac; //instrument => name

myBar.noteOn(1);
//set a type of stick
0.9 => myBar.stickHardness;

//intensity of hitting (velocity)
1. => myBar.strike;

//bring preset
6 => myBar.preset;

//set vibra freq
1 => myBar.vibratoFreq;

//set a duration
1::second => now;

myBar.noteOff(1); */

Saxofony mySax => HPF hiPass => ADSR env => dac;
env.set(0.5::second, 50::ms, 0.25, 100::ms);
[[76,74,69,65],
 [76,74,69,65],
 [72,70,65,62],
 [72,70,65]]@=> int melody[][];
 [[0.5,0.25,0.5,0.5],
  [0.5,0.25,0.5,0.5],
  [0.5,0.25,0.5,0.5],
  [0.5,0.25,1.0]] @=> float length[][];
for (0 => int r; r < melody.size(); r++)
{
	for (0 => int c; c < melody[r].size(); c++) {
		440 => hiPass.freq;
		mySax.noteOn(1);
		1 => env.keyOn;
        //0.4 => mySax.stiffness;
		1 => mySax.vibratoFreq;
		Std.mtof(melody[r][c]) => mySax.freq;
		length[r][c]::second => now;
		1 => env.keyOff;
		mySax.noteOff(1);
	}
	
}
