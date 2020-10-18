function write_audio_to_new_file(testAudio, testAudioSampleRate)
newAudioFile = './newAudio.wav';
audiowrite(newAudioFile,testAudio,testAudioSampleRate);
clear testAudio testAudioSampleRate;
end
