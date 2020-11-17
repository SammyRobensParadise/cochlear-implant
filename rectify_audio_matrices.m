function [success,rectified_array] = rectify_audio_matrices(audio_array)
%RECTIFY_AUDIO_FILES Rectifies an array of audio signals and returns a new
%array of the rectified signals

% create an array for the rectified signals
array_length=length(audio_array);
rectified_cells=cell(array_length,1);

% loop through the array of signals, rectifying each signal and pushing the
% rectified signals to a new array
for c = 1:array_length
    rectified_cells{c}=abs(audio_array{c});
rectified_array=rectified_cells;
% end
success=true;
end

