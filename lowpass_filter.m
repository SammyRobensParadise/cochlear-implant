function [lp_filter] = lowpass_filter(sampling_frequency, order, cutoff_frequency )
%LOWPASS_FILTER Returns a discrete-time filter object.

% Butterworth Lowpass filter designed using FDESIGN.LOWPASS.

% Construct an FDESIGN object and call its BUTTER method.
lowpass_specs  = fdesign.lowpass('N,F3dB', order, cutoff_frequency, sampling_frequency);
lp_filter = design(lowpass_specs, 'butter');
end