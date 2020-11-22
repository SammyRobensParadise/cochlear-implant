% *************************************************
% Sammy Robens-Paradise,Cindy McGinnis, Mary McPhee
% Cochlear Implant, SYDE 252
% *************************************************

% PHASE 1
% res=process_audio_file('./VoiceRecording1.wav','new_audio_file.wav');

% PHASE 2
% TODO:
% Make this into a loop so that it loops through
% All the test files
% determine the number of intervals that the sound should be split up into
intervals=10;
[isFiltered, filtered_array]=filer_audio_files('./VoiceRecording1.wav',intervals);

% plot each filtered audio against sampling rate
file_number=2;
plotSuccess=plot_audio_matrix(filtered_array,file_number);

% envelope extraction step 1: rectify each filtered signal
[isRectified, rectified_array]=rectify_audio_matrices(filtered_array);

% envelope extraction step 2: 
[isExtracted, envelope_array]=detect_envelope(rectified_array);
% plot extracted envelope of highest and lowest channels 
file_number=4; 
plot_envelope_array(envelope_array, file_number);

% END
