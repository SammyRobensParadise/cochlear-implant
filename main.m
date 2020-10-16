% get loaders
load handel.mat
% sampling rate multiplier
sampling_rate_multiplier=1;
% get audio filepath
TestRecordingAudioPath='/Users/sammyrobens-paradise/projects/cochlear-implant/VoiceRecording1.wav';

% get audio
[testAudio,testAudioSampleRate]=get_recording(TestRecordingAudioPath);
% play audio
sound(testAudio,testAudioSampleRate*sampling_rate_multiplier);
% display sampling rate
% get size
disp(size(testAudio));
isMono=is_audio_mono(testAudio);
disp(isMono);