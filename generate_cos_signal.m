function [generated_signal]= generate_cos_signal(audio, sampling_rate,figure_num)
% GENERATE_COS_SIGNAL generates a signal using the cosine function
% with the same time duration and frequency of the input signal
% calculate the time duration of the input signal
N = length(audio);
time_duration= N/sampling_rate;

% figure(figure_num)
oscillation = 1000;
cycles=2;
t = 0:(1/sampling_rate):cycles/oscillation;
y = cos(2*pi*oscillation*t);
% plot(t, y);
% xlabel('t'); 
% ylabel('y(t)');
generated_signal=y;
end
