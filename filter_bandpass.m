function [interval_audio_matrix] = filter_bandpass(audio_matrix,min_freq_range,max_freq_range,sample_rate)
%FILTER_BANDPASS returns an audio matrix of the specified sub_interval
% create bandpass filter
order=10;
BANDPASS=bandpass_filter_v1(order,min_freq_range,max_freq_range,sample_rate);
interval_audio_matrix =audio_matrix
end

