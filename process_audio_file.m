function [success] = process_audio_file(audio_file,new_file_name)
%PROCESS_AUDIO_FILE steps encompassed in Phase 1
% get loaders

% sampling rate multiplier
sampling_rate_multiplier=1;
% get audio filepath
audioPath=audio_file;

% get audio
[audio,audioSampleRate]=get_recording(audioPath);

% play test audio
sound(audio,audioSampleRate*sampling_rate_multiplier);

% determine if signal is mono
% isMono=is_audio_mono(testAudio);

% format audio as mono
formatted_audio=get_audio_as_mono(audio,audioSampleRate);

% apply Savitzky-Golay filtering and play the sound again
rd = 9;
fl = 21;
smoothed_signal=sgolayfilt(formatted_audio,rd,fl);
sound(smoothed_signal,audioSampleRate*sampling_rate_multiplier);

% write audio to new file
write_audio_to_new_file(formatted_audio, audioSampleRate,new_file_name);

% plot the sound waveform against sample rate
plot_waveform_signal(formatted_audio,1)

% downsample audio if sampling rate is not 16kHz
[resampled_audio,new_sampling_rate]=downsample_audio(formatted_audio,audioSampleRate);

% generate a signal using the cosine function and plot
[cos_signal,cos_signal_sampling_rate] = generate_cos_signal(resampled_audio,new_sampling_rate,2);

% play the signal
sound(cos_signal,cos_signal_sampling_rate);
% end
success=true;
end

