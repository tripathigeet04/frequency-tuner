%this is a file to generate a sound file with a tone at a specific
%frequency

%frequency of the tone we want (Hz)
f = 440;

%amplitude of sound
amp = 1;

%sampling freq (Hz) (using max sample rate allowed for the sound()
%function which varies depending on the computers hardware)
fs=150000;

%time in seconds
t=0:(1/fs):2;

snd=amp*cos(2*pi*f*t);

% add in several background frequencies between 
freqs = random('unif',10,2000,1,15);

for i = 1:15
    snd = snd + (0.01*amp)*cos(2*pi*freqs(i)*t);
end


sound(snd,fs);