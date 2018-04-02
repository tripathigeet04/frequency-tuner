%% SECTION 1
% t=0:(1/1000):1;
% 
% K=0.5*cos(2*pi*100*t);
% [cracra] = Derivative(K, 1000);
% figure(1)
% plot(t, K)
% figure(2)
% plot(t, cracra)

[complx,mag,magdb,freq] = easy_FFT(snd,fs,false);

deriv_mag = Derivative(mag,fs);

figure(1)
plot(freq,mag);

figure(2)
plot(freq,deriv_mag);
G = 1;
arry = zeros(1,length(mag));
for L = 1:(length(mag)-1)
    if deriv_mag(L) > deriv_mag(L+1) && deriv_mag(L+1) <= 0
        arry(G) = 1;
        G = G + 1;
    end
        
end
figure(3)
plot(freq,arry)
        
        
