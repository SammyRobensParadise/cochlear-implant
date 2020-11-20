function [max_flat_lp_filter] = lowpass_v2(sampling_frequency, numer_order, denom_order, cutoff_frequency )
%LOWPASS_V2 Returns a discrete-time filter object.

% IIR maximally flat Lowpass filter designed using the MAXFLAT function.

% Constuct an FDESIGN object.
lowpass_specs  = fdesign.lowpass('Nb,Na,F3dB', numer_order,  denom_order, cutoff_frequency, sampling_frequency);
max_flat_lp_filter = design(lowpass_specs, 'butter');
end
