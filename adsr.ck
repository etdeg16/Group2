Saxofony andrewLiu => LPF lowPass => ADSR env => dac;
env.set(0.5::second, 50::ms, 0.5, 1000::ms);
[[60,62,64,65],[67,69,71,72]]@=> int melody[][];[[0.5,0.5,0.5,0.5],[0.5,0.5,0.5,2.0]] @=> float length[][];

for (0 => int r; r < melody.size(); r++)
{
	for (0 => int c; c < melody[r].size(); c++) {
		andrewLiu.noteOn(1);
		1 => env.keyOn;
		1 => andrewLiu.vibratoFreq;
		Std.mtof(melody[r][c]) => andrewLiu.freq;
		length[r][c]::second => now;
		1 => env.keyOff;
		andrewLiu.noteOff(1);
	}
}

