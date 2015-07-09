SinOsc oscillators[5];
[100, 146, 235, 594, 701] @=> int frequencies[];
[0.3, 0.2, 0.19, 0.17, 0.15] @=> float amplitudes[];
for (0 => int i; i < freqencies.cap(); i++) {
  freqencies[i] => oscillators[i].freq;
  amplitudes[i] => oscillators[i].gain;
  oscillators[i] => dac;

}
1::second => now;
} 