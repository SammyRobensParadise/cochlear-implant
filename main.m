% *************************************************
% Sammy Robens-Paradise,Cindy McGinnis, Mary McPhee
% Cochlear Implant, SYDE 252
% ************************************************

% determine the number of intervals that the sound should be split up into
intervals=10;
[isFiltered, filtered_array,center_frequencies]=filer_audio_files('./VoiceRecording1.wav',intervals);
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



% plot extracted envelope of highest and lowest channels 
file_number=4; 
plot_audio_matrix(envelope_array, file_number);

% END
