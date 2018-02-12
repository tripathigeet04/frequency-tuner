function [ FFT_output ] = FFT( vec,Fs,Plot )
%FFT does a fft with the option to display the output in a graph
%   Inputs:     vec --> n by 1 vector of time series data for the fft to be done on
%               Fs  --> sample rate of vec
%               Plot--> boolean for whether to generate a plot or not
    
    %sampling period
    Ts = 1/Fs;
    
    %length of signal
    L = length(vec);
    
    %utilize fft fuction in matlab to produce the output vector
    FFT_output = fft(vec)

end

