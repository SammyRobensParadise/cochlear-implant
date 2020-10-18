function write_audio_to_new_file(testAudio, testAudioSampleRate)
newAudioFile = './newAudio.wav';
AUDIOWRITE(newAudioFile,testAudio,testAudioSampleRate);
end