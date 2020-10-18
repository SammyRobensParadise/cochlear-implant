% *************************************************
% Sammy Robens-Paradise,Cindy McGinnis, Mary McPhee
% Cochlear Implant, SYDE 252
% *************************************************

% get loaders
load handel.mat

% sampling rate multiplier
sampling_rate_multiplier=1;
% get audio filepath
TestRecordingAudioPath='./VoiceRecording1.wav';

% get audio
[testAudio,testAudioSampleRate]=get_recording(TestRecordingAudioPath);

% play audio
sound(testAudio,testAudioSampleRate*sampling_rate_multipso ier);
% call is_audio_mono func demo
isMono=is_audio_mono(testAudio);
% call get_audio_as_mono func dem0
formatted_audio=get_audio_as_mono(testAudio,testAudioSampleRate);
% write audio to new file
write_audio_to_new_file(testAudio, testAudioSampleRate);
