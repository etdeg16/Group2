SndBuf mySound => Pan2 pan => dac;

me.dir()+"sounds/BikeBell2.wav" => mySound.read;

for (0 => int i; i < 3; i++) {
	Math.random2f( 0.1, 1.0 ) => mySound.gain;
	Math.random2f( -1.0, 1.0 ) => pan.pan;
	Math.random2f(0.2, 1.8) => mySound.rate;

	0 => mySound.pos;

	20::second => now;
}