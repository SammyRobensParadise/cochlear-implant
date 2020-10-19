function generate_cos_signal(audio, sampling_rate)
% GENERATE_COS_SIGNAL generates a signal using the cosine function
% with the same time duration and frequency of the input signal

% calculate the time duration of the input signal
N = length(audio);
time_duration = N/sampling_rate;
% plot the signal
figure(2)
oscillation = 1000;
t = 0:time_duration:N;
y = cos(2*pi*oscillation*t);
plot(t, y);
end
