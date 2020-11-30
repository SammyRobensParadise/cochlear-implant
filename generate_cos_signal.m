function [generated_signal]= generate_cos_signal(frequency,freq_array,sampling_rate)
% GENERATE_COS_SIGNAL generates a signal using the cosine function
% with the same time duration and frequency of the input signal
% calculate the time duration of the input signal
disp(sampling_rate)
f=frequency;
ts=1/sampling_rate;
N=length(freq_array);
T=N/sampling_rate;
t=0:ts:T-1/ts;
generated_signal=cos(2*pi*f*t);
end
