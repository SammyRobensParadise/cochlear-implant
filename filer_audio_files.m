function [success] = filer_audio_files(audio_file,intervals)
%PROCESS_AUDIO_FILE steps encompassed in Phase 1
% get loaders

% get audio filepath
audioPath=audio_file;

% get audio
[audio,audioSampleRate]=get_recording(audioPath);
% format audio as mono
mono_audio=get_audio_as_mono(audio,audioSampleRate);

% get array of subinterval sounds from mono audio into a specified number
% of intervals
[interval_audio_array]=subdivide_audio_matrix(mono_audio,intervals);

% end
success=true;
end

