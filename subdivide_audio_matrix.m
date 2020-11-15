function [interv_cells] = subdivide_audio_matrix(audio_matrix,intervals,audio_sample_rate)
%SUBDIVIDE_AUDIO_MATRIX Subdivides an audio matrix into intervals of
% smaller audio matrices using a bandpass filter and returns an array of the
% filtered signals
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
freq_interval_length=size(frequencies);
indexer=((freq_interval_length(2))-1);

% create array for filtered sounds
freq_interval_cells = cell(interval_number,1);
% index through the frequencies and filter the audio
% file on the specified intervals
% where c is the lower bound on the inverval and c+1 is
% the upper bound on the interval
for c = 1:indexer
    freq_interval_cells{c}=filter_bandpass(audio_matrix,frequencies(c),frequencies(c+1),audio_sample_rate);
interv_cells=freq_interval_cells;
end

