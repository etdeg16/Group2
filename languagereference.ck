// This is a one line commment
 /* This
 	is a
 	multiline
 	comment */
// semicolons after each line, compile error without
SinOsc sinOscillator => dac;
//0.3 => sinOscillator.gain;
//440 => sinOscillator.freq;
//0.1::second => now;
//The => (Chuck) operator:  
/* Chuck operator => represents a signal flow arrow and
connects (Chucking) the left side to the right side of the arrow. For
example, SinOsc sinOscillator => dac; connects and oscillator s to the output
*/
// Declaring variables in Chuck:
int myNumber;
40 => myNumber;
string myName;
"Ethan" => myName;
int pitchPiano;
440 => pitchPiano;
//connecting a sine oscillator to an output is called "patching"
/* Units of Time:
The time type holds a point in time.
The dur type holds a duration, a length of time or the distance between two times.
The now word (of type time) holds the currently logical Chuck time. Its value annot be changed as it works
like a master clock. */
//printing to the console:
200 => int carrier;
50 => int modulator;
<<< carrier, modulator >>>;
//How to get the length of a string:
"Synthesis" => string str;
<<< "Synthesis has", str.length(), "characters" >>>;
//Type Casting
//String to integer
//int atoi("1");
//Integer to string
//string itoa(1);

"2" => string dos;
Std.atoi(dos) + 1 => int tres;
<<< dos, tres >>>;
//if-else conditions
//Noise myNoise => dac;
1 => int myTime;
//0.5 => myNoise.gain;

/*if (myTime <= 3) {
	myTime::ms => now;
} 
else {
	100::ms => now;
}*/

7 => int int1;
4 => int int2;
int1 % int2 => int modulo;
if(int1 > int2 && modulo == 3) {
	<<<"TRUE">>>;
}
 else {<<<"FALSE">>>;}
/*For Loops
SinOsc myOscil => dac;
for (0 => int i; i < 10; i++)
{
	i*220 => myOscil.freq;
	1 - i/10.0 => float myGain;
	myGain => myOscil.gain;
	<<<myGain>>>;
	1::second => now;
} 
//While loops
SinOsc myOtherOscil => dac;
0 => int i;
while (i < 100)
{
	Math.random2(100, 1000) => myOscil.freq;
	1 - i/10.0 => float myOtherGain;
	myOtherGain => myOtherOscil.gain;
	<<<myOtherGain>>>;
	50::ms => now;
	i++;
} */
//Functions
fun string hola(string personName){
return <<<"Hello", personName,"!!!">>>;
}
hola("Ebae");
SinOsc playMelody => dac;
[60, 60, 67, 67, 69, 69, 67, 67] @=> int myArray[];
for (0 => int i; i < myArray.size(); i++)
{
	Std.mtof(myArray[i]) => playMelody.freq;
	0.5 => playMelody.gain;
	0.25::second => now;
}