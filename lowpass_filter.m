function lp_filter = lowpass_filter
%LOWPASS_FILTER Returns a discrete-time filter object.

% Butterworth Lowpass filter designed using FDESIGN.LOWPASS.

% All frequency values are in Hz.
sampling_frequency = 1600;  % Sampling Frequency
order  = 10;   % Order
cutoff_frequency = 400;  % Cutoff Frequency

% Construct an FDESIGN object and call its BUTTER method.
lowpass_specs  = fdesign.lowpass('N,F3dB', order, cutoff_frequency, sampling_frequency);
lp_filter = design(lowpass_specs, 'butter');
end