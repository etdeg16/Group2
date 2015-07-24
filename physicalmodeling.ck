ModalBar myBar => BPF filter => ADSR env => dac; //instrument => name
env.set(50::ms, 20::ms, 0.1, 10::ms);
env.keyOn();
myBar.noteOn(1);
//set a type of stick
0.6 => myBar.stickHardness;

//intensity of hitting (velocity)
1. => myBar.strike;

//bring preset
5 => myBar.preset;

5000 => filter.freq;
1.3 => filter.Q;
//set vibra freq
1000 => myBar.vibratoFreq; 

50 => myBar.volume;
//5000 => filter.freq;

//set a duration
1::second => now;

myBar.noteOff(1); 
env.keyOff();

/*Saxofony mySax => HPF hiPass => ADSR env => dac;
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
	
}*/
