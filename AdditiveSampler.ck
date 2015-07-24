/*SinOsc fundamental => dac;
SinOsc sine2 => dac;
SinOsc sine3 => dac;
SinOsc sine4 => dac;

1000 => fundamental.freq;
2500 => sine2.freq;
3330 => sine3.freq;
4800 => sine4.freq;

0.5 => fundamental.gain;
0.25 => sine2.gain;
0.125 => sine3.gain;
0.06 => sine4.gain;

2::second => now;*/

/*SqrOsc additive[4];

for (0 => int i; i < additive.cap(); i++)
{
	additive[i] => dac;
	1.0/additive.cap() => additive[i].gain;
} 

fun void additiveSynthesis(float freq, float gain) {
    for (0 => int i; i < additive.cap(); i++)
    {
    	(i+1) * freq => additive[i].freq;
    	(2 /=> gain) => additive[i].gain;
    }
    3::second => now;
}

additiveSynthesis(233.08, 0.5);*/

/*Noise noise => LPF lowpass => dac;

440 => lowpass.freq;
10.0 => lowpass.Q;
0.5 => lowpass.gain;

second => now;*/

Murley myFM => dac;

15.0 => myFM.lfoSpeed;
1.0 => myFM.lfoDepth;

1000 => myFM.freq;
0.7 => myFM.gain;

2 => myFm.noteOn;
2::second => now;
1 => myFM.noteOff;
1::second => now;