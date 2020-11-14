function [interval_array] = subdivide_audio_matrix(audio_matrix,intervals)
%SUBDIVIDE_AUDIO_MATRIX Subdivides an audio matrix into intervals of
% smaller audio matrices using a bandpass filter and returns an array of the
% filtered signals
disp(audio_matrix);
interval_number = intervals;
% minimum absolute frequency
MIN_FREQUENCY=100;
% maximum absolute frequency
MAX_FREQUENCY=8000;
% get detla between max and min frequencies
abs_freq_delta=(MAX_FREQUENCY-MIN_FREQUENCY);
% get the frequency range of the inverals
freq_interval_range=(abs_freq_delta/interval_number);
frequencies=MIN_FREQUENCY:freq_interval_range:MAX_FREQUENCY;
disp(frequencies);
freq_interval_length=size(frequencies);
indexer=((freq_interval_length(2))-1);

disp(indexer);
% index through the frequencies and filter the audio
% file on the specified intervals
for c = 1:indexer
    
interval_array=[0];
end

