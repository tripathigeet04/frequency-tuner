%this is a file to generate a sound file with a tone at a specific
%frequency

%loop to generate multiple frequencies at a time
for i = 1 : 3

%random int to produce frequency
ran_num = rand * 1000;


%frequency of the tone we want (Hz)
f = ran_num;

%amplitude of sound
amp = 1;

%sampling freq (Hz) (using max sample rate allowed for the sound()
%function which varies depending on the computers hardware)
fs=150000;


%time in seconds
t=0:(1/fs):2;

snd=amp*cos(2*pi*f*t);



    for i = 1:15
        %generating random numbers to add in background frequencies
        snd = snd + .05 * randn(size(t));
    end


sound(snd,fs);

pause(4);
end

%% added part from  meeting on 2-7-18



save generateSound.mat; %saving the sound that was made
%clear snd fs % removes variables if you want to
%^^^^if used, you must load the file again

%% save the sound above to a .wav file

%load generateSound.mat; %use only if the 'clear snd fs' is used above

%saving the sound previously made to a .wav file
filename= 'SOUND.wav'; %naming the sound that was created
audiowrite(filename,snd,fs);
[snd,fs]=audioread('SOUND.wav');
sound(snd,fs);
%sound is now saved in the same folder with the code
%clear sound

%keeps saying "Warning: Data clipped when writing file"
% what does that mean ^^ 


%test
