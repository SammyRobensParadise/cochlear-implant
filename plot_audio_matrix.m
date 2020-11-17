function [success] = plot_audio_matrix(audio_matrix,num)
%PLOT_AUDIO_MATRIX Plots the first and last index of an audio matrix
%against the sampling rate

%plot the first index (lowest frequency channel)
success=plot_waveform_signal(audio_matrix{1}, num);
%plot the last index (highest frequency channel)
success=success&plot_waveform_signal(audio_matrix{length(audio_matrix)}, num+1);
%end
end
