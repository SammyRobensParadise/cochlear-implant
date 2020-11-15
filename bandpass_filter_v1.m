function Hd = bandpass_filter_v1(order,c1_freq,c2_freq,sampling_frequency)
%BANDPASS_FILTER_V1 Returns a discrete-time filter object.
% DEFIN:
% bandpass_filter_v1(order,First Cutoff Frequency,Second Cutoff Frequency,Sampling Frequency)
% All frequency values are in Hz.
% Fs = 3600;  % Sampling Frequency
% N   = 10;    % Order
% Fc1 = 100;   % First Cutoff Frequency
% Fc2 = 1680;  % Second Cutoff Frequency

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.bandpass('N,F3dB1,F3dB2', order,c1_freq,c2_freq,sampling_frequency);
Hd = design(h, 'butter');

% [EOF]
