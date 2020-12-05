function [success, envelope_array] = detect_envelope(rectified_array,sampling_rate)
%DETECT_ENVELOPE detects envelope of each signal in rectified array then
%sorts into new array (envelope_array). Uses lowpass_filter.m
%   Detailed explanation goes here
%r_array = cell2mat(rectified_array);

% filter specifications
order  = 139;   % Order
cutoff_frequency = 1600;  % Cutoff Frequency
% Sampling Rate

% LOWPASS=lowpass_FIR(order, cutoff_frequency, sampling_rate);
LOWPASS=lowpass_FIR_v2_chebyshev(order, cutoff_frequency, sampling_rate);
% create array for filtered sounds
array_length=length(rectified_array);
envelope_cells=cell(array_length,1);

%index through the rectified array and add to envelope array
for c = 1:array_length
    envelope_cells{c}=filter(LOWPASS,rectified_array{c});

envelope_array = envelope_cells;

success=true;
end
