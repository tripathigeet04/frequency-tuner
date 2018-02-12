function [ FFT_complex,FFT_mag,freqs ] = FFT( vec,Fs,Plot )
%FFT does a fft with the option to display the output in a graph
%   Inputs:     vec --> n by 1 vector of time series data for the fft to be done on
%               Fs  --> sample rate of vec
%               Plot--> boolean for whether to generate a plot or not
    
    %sampling period
    Ts = 1/Fs;
    
    %length of signal
    L = length(vec);
    
    %utilize fft fuction in matlab to produce the output vector
    FFT_complex = fft(vec);
    
    %compute the magnitude of each component from the fft
    FFT_mag = abs
    %create a vector of the frequencies for the axis
    freqs =  Fs*(0:(L/2))/L;
    
    %plot if the varible plot is true
    if(Plot)
        plaot
    end
end

