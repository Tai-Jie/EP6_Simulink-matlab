function fft_analysis(data)
    Fs = 11E3;         % Sampling frequency                        
    L = length(data);  % Length of signal
    Y = fft(data);
    plot(Fs/L*(0:L-1),abs(Y),"LineWidth",3)
    title("Complex Magnitude of fft Spectrum")
    xlabel("f (Hz)")
    ylabel("|fft(X)|")
end