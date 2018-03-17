function [ Deriv ] = Derivative( Vec,Fs )
%DERIVATIVE preforms a centered approximation of a derivative on a given
%vector
%   Inputs:
%           Vec     -->     Input vector to be differentiated
%           Fs      -->     sampling rate of input vector (to get spacing
%                           between points)
%
%   Outputs:
%           Deriv   -->     derivative vector of input

    %get length of the vector
    L=length(Vec);
    
    %get spacing between points
    t=(1/Fs);
    
    %create derivative
    Deriv = zeros(1,L);
    
    %forward facing derivative for first point
    Deriv(1)=(Vec(2)-Vec(1))/(t);
    %backward facing derivatives for last point
    Deriv(L)=(Vec(L)-Vec(L-1))/(t);
    
    
    
    %calculate centered derivative but can't have the first and last point
    %in the loop
    for i = 2:L-1
        Deriv(i) = (Vec(i+1)-Vec(i-1))/(2*t);
    end

end

