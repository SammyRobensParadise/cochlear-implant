function [resampled_audio, new_sampling_rate] = downsample_audio(audio,sampling_rate)
% DOWNSAMPLE_AUDIO resample audio to 16kHz if sampling rate is not 16kHz
new_sampling_rate = 16000;
if sampling_rate==16000
    resampled_audio = audio;
else
    resampled_audio = resample(audio, sampling_rate, new_sampling_rate);
end
