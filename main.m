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
isFiltered=filer_audio_files('./VoiceRecording1.wav',intervals);
% END