function [generated_signal]= generate_cos_signal(sampling_rate)
% GENERATE_COS_SIGNAL generates a signal using the cosine function
% with the same time duration and frequency of the input signal
% calculate the time duration of the input signal

oscillation = 1000;
cycles=2;
t = 0:(1/sampling_rate):cycles/oscillation;
y = cos(2*pi*oscillation*t);
generated_signal=y;
end
