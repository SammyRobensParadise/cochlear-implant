function write_audio_to_new_file(testAudio, testAudioSampleRate,filename)
newAudioFile = filename;
sound(testAudio,testAudioSampleRate)
audiowrite(newAudioFile,testAudio,testAudioSampleRate);
clear testAudio testAudioSampleRate;
end
