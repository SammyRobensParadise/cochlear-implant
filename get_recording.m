
% Get audio recording and sample rate
function [recording,Fs] = get_recording(recording_file_path)
% GET_RECORDING returns the an [nxn] matrix and the sampling rate for a
% given sound
[recording,Fs] = audioread(recording_file_path);
end
