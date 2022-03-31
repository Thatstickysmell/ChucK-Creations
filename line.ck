/*
SinOsc osc => dac;

    1 :: second => dur quar;

    110 => osc.freq;
    0.5 => osc.gain;

quar => now;

  


int bassL[4];

110 => bassL[0];
165 => bassL[1];
220 => bassL[2];
660 => bassL[3];
*/


SinOsc osc => dac;
0.6 => osc.gain;

[60, 62, 60, 66, 60, 62, 66] @=> int bassL[];


while(true)
    {

for (0 => int i; i < bassL.cap(); i++)
{
    Std.mtof(bassL[i]) => osc.freq;
    200 :: ms => now;
}
    }

