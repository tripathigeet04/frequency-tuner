%this is a file to generate a sound file with a tone at a specific
%frequency

%frequency of the tone we want (Hz)
f = 440;

%amplitude of sound
amp = 10;

%sampling freq (Hz)
fs=10000;

%time in seconds
t=0:(1/fs):2;

snd=amp*cos(2*pi*f*t);

sound(snd);