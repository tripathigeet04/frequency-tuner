function [ FFT_complex,FFT_mag,FFT_mag_dB,freqs ] = easy_FFT( vec,Fs,Plot )
%FFT does a fft with the option to display the output in a graph
%   Inputs:     vec --> n by 1 vector of time series data for the fft to be done on
%               Fs  --> sample rate of vec
%               Plot--> boolean for whether to generate a plot or not
%
%   Outputs:    FFT_complex     --> The full complex outputs of the matlab
%                                   fft function
%               FFT_mag         --> Only the magnitude information of the
%                                   postive frequency
%               FFT_mag_dB      --> FFT_mag in decibels
%               freqs           --> Vectors whose indices contain the
%                                   frequencies that correspond to the
%                                   FFT_mag and the first half of
%                                   FFT_complex
    
    %sampling period
    Ts = 1/Fs;
    
    %length of signal
    L = length(vec);
    
    %utilize fft fuction in matlab to produce the output vector
    %this output includes negative and positive frequencies
    FFT_complex = fft(vec);
    
    %compute the magnitude of each component from the fft
    %this output includes only positive frequencies and is normalized by
    %the length of the the sound vector
    FFT_mag = abs(FFT_complex(1:(L/2)+1)/(L/2));
    
    %calculate FFT_mag in decibels
    FFT_mag_dB = 20*log10(FFT_mag);
    
    %create a vector of the frequencies for the axis
    freqs =  Fs*(0:(L/2))/L;
    
    %plot only the positive frequency magnitudes if the varible plot is true
    if(Plot)
        %plot the normalized magnitudes
        figure;
        plot(freqs,FFT_mag);
        title('DFT of Timeseries Data');
        xlabel('Frequency (Hz)');
        ylabel('Magnitude (normalized)');
        
        %plot the manitudes in dB
        figure;
        plot(freqs,FFT_mag_dB);
        title('DFT of Timeseries Data in dB');
        xlabel('Frequency (Hz)');
        ylabel('Magnitude (dB)');
    end
end

