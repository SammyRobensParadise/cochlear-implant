
% Get audio recording and sample rate
function [recording,Fs] = get_recording(recording_file_path)
[recording,Fs] = audioread(recording_file_path);
end
