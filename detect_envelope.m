function [envelope_array] = detect_envelope(rectified_array)
%DETECT_ENVELOPE detects envelope of each signal in rectified array then
%sorts into new array (envelope_array). Uses lowpass_filter.m
%   Detailed explanation goes here

% filter specifications
order  = 10;   % Order
cutoff_frequency = 400;  % Cutoff Frequency

% create array for filtered sounds
array_length=length(rectified_array);
envelope_cells=cell(array_length,1);

% index through the rectified array and add to envelope array
for c = 1:array_length
    envelope_cells{c}=lowpass_filter(rectified_array{c}, order, cutoff_frequency);
envelope_array = envelope_cells;
end
