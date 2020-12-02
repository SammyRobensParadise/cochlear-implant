% *************************************************
% Sammy Robens-Paradise,Cindy McGinnis, Mary McPhee
% Cochlear Implant, SYDE 252
% ************************************************

% determine the number of intervals that the sound should be split up into
intervals=10;
[isFiltered, filtered_array,center_frequencies,sampling_rate]=filer_audio_files('./VoiceRecording1.wav',intervals);
% throw an error if audio files are not filtered
if(not(isFiltered))
    error("Error: \n Unable to filter audio files %s.",isFiltered)
end

% plot filtered audio against sampling rate
file_number=2;
plotSuccess=plot_audio_matrix(filtered_array,file_number);

% envelope extraction step 1: rectify each filtered signal
[isRectified, rectified_array]=rectify_audio_matrices(filtered_array);
% throw an error if audio unable to rectify signals
if(not(isRectified))
    error("Error: \n Unable to rectify signals %s.",isRectified)
end

% envelope extraction step 2: detect envelope 
[isExtracted, envelope_array]=detect_envelope(rectified_array);
% throw an error if audio unable to extract signals
if(not(isExtracted))
    error("Error: \n Unable to extract signals by detecting envelope %s.",isExtracted)
end

% genreate a cosine signal for each interval
[isGenerated,cosine_signals]=generate_cos_signals_for_each_interval(intervals,center_frequencies,envelope_array,sampling_rate);
% throw an error if audio unable to get cosine signals
if(not(isGenerated))
        error("Error: \n Unable to generate cosine signals %s.",isGenerated)
end
% modulate signals with cosine signals
[isModulated,modulated_signal_cells]=modulate_signals(envelope_array,cosine_signals);
% throw an error if the signal is unable to modulate signals
if(not(isModulated))
        error("Error: \n Unable to modulate signals %s.",isModulated)
end
% combine modulated signals
[isUniformSignalGenerated,uniform_signal]=generate_uniform_signal(modulated_signal_cells);
if(not(isUniformSignalGenerated))
        error("Error: \n Unable to combine signals %s.",isUniformSignalGenerated)
end

sound(uniform_signal,sampling_rate)
write_audio_to_new_file(uniform_signal,sampling_rate,'generated_audio_file.wav')

