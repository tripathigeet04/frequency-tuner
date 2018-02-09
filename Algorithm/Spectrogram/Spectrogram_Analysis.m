
%let the user select the file they want to look at - must be a supported
%filetype
fileName = uigetfile({'*.wav'; '*.ogg' ; '*.flac' ; '*.au' ; '*.aif' ; '*.aiff' ; '*.aifc' ; '*.mp3' ; '*.m4a' ; '*.mp4'});

%get the info about the file
info = audioinfo(fileName);

%read data from the file into the workspace
[y,Fs] = audioread(fileName);

%Y      ->  time series data 
%Fs     ->  sample rate 

Y = y(:,1);

%define window size (smaller = better freq resolution)
%currently arbitrary
wind = 1024;

%define 50 percent overlap
overlap = wind/2; 

%define number of FFT points
%currently arbitary (more points may affect run time)
numPoints = 10000;

%get the outputs from the spectrogram function
[s,f,t] = spectrogram(Y,wind,overlap,numPoints,Fs);

%let MATLAB autocreate a plot
spectrogram(Y,wind,overlap,numPoints,Fs,'yaxis');
