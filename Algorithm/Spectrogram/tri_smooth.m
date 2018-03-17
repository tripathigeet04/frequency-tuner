function [ smoothed_vec ] = tri_smooth( vec )
%TRI_SMOOTH smooths an input vector using a triangluar average window
%           this can also be acomplished with the fastsmooth function
%           https://terpconnect.umd.edu/~toh/spectrum/Smoothing.html
%   Inputs:
%            vec           -->     Input vector to be smoothed
%   Outputs:
%            smoothed_vec  -->     The smoothed vector that is returned

    %get the length of the input
    L = length(vec);
    
    %initialize the output vector
    smoothed_vec = zeros(1,L);
    
    %calculated the initial smoothed point to be used 
    weighted_sum = vec(1)+2*vec(2)+3*vec(3)+2*vec(4)+vec(5);
    
    %start with first value of smoothed vec
    smoothed_vec(3) = weighted_sum/9;
    
    
    %loop to recursively calculate each point
    for i = (1+3):(L-3)
        %calculated new weighted sum by adding and subtracting only the
        %points that changed
        weighted_sum = weighted_sum - vec(i-3) - vec(i-2) - vec(i-1) + vec(i) + vec(i+1) + vec(i+2);
        
        %finally, calculated the current smoothed point
        smoothed_vec(i) = weighted_sum/9;
        
    end


end

