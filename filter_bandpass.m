function [interval_audio_matrix] = filter_bandpass(audio_matrix,min_freq_range,max_freq_range,sample_rate)
% FILTER_BANDPASS returns an audio matrix of the specified sub_interval
% create bandpass filter
% specify order of filter
order=60;
% create filter
BANDPASS=bandpass_filter_v3(order,min_freq_range,max_freq_range,sample_rate);
% filter signal on interval
filtered_interval=filter(BANDPASS,audio_matrix);
% return the filtered data
interval_audio_matrix=filtered_interval;
end
