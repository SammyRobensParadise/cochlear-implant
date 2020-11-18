function [success, envelope_array] = detect_envelope(rectified_array)
%DETECT_ENVELOPE detects envelope of each signal in rectified array then
%sorts into new array (envelope_array). Uses lowpass_filter.m
%   Detailed explanation goes here
%r_array = cell2mat(rectified_array);

% filter specifications
order  = 10;   % Order
cutoff_frequency = 400;  % Cutoff Frequency
sampling_rate = 1600; % Sampling Rate

LOWPASS=lowpass_filter(sampling_rate, order, cutoff_frequency);
envelope_array=filter(LOWPASS,rectified_array);

% create array for filtered sounds
% r_array_length=length(rectified_array);
% envelope_cells=cell(r_array_length,1);

% index through the rectified array and add to envelope array
% for c = 1:r_array_length
%      envelope_cells{c}=lowpass_filter(rectified_array{c}, order, cutoff_frequency);
% envelope_array = envelope_cells;

success=true;
end
