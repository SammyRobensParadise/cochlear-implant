function [generated_signal,sampling_rate_gen]= generate_cos_signal(audio, sampling_rate,figure_num)
% GENERATE_COS_SIGNAL generates a signal using the cosine function
% with the same time duration and frequency of the input signal

% calculate the time duration of the input signal
N = length(audio);
time_duration= N/sampling_rate;
disp(time_duration);

% plot the signal
figure(figure_num)
oscillation = 1000;
cycles=2;
disp(time_duration);
t = 0:(1/sampling_rate):cycles/oscillation;
y = cos(2*pi*oscillation*t);
plot(t, y);
generated_signal=y;
sampling_rate_gen=sampling_rate;
end


% f=400
% Amp=1
% ts=1/8000;
% T=6
% t=0:ts:T;
% y=sin(2*pi*f*t);
% plot(t,y)