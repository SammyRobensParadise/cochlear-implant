function [generated_signal]= generate_cos_signal(frequency,freq_array,sampling_rate)
% GENERATE_COS_SIGNAL generates a signal using the cosine function
% with the same time duration and frequency of the input signal
% calculate the time duration of the input signal

fs = sampling_rate;      % Sampling frequency (samples per second)                 
N = length(freq_array); % sample lenth         
t=linspace(0, N/fs, N);
F = frequency;                     
generated_signal = cos(2*pi*F*t);
end

