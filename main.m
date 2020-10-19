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
sound(testAudio,testAudioSampleRate*sampling_rate_multiplier);

% determine if signal is mono
isMono=is_audio_mono(testAudio);

% format audio as mono
formatted_audio=get_audio_as_mono(testAudio,testAudioSampleRate);

% apply Savitzky-Golay filtering and play the sound again
rd = 9;
fl = 21;
smoothed_signal=sgolayfilt(formatted_audio,rd,fl);
sound(smoothed_signal,testAudioSampleRate*sampling_rate_multiplier);

% write audio to new file
write_audio_to_new_file(testAudio, testAudioSampleRate);

% plot the sound waveform against sample rate 
%plot(formatted_audio, testAudioSampleRate);
%xlabel('Sample Rate'); 
%ylabel('Audio');

% downsample audio if sampling rate is not 16kHz
resampled_audio=downsample_audio(testAudio,testAudioSampleRate);
