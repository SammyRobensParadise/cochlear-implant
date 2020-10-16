function [mono_audio,mono_audio_sampling_rate] = get_audio_as_mono(audio,sampling_rate)
%CONVERT_AUDIO_TO_MONO if audio is sterio, convert it to mono and returns
%the audio in the form of mono, else just returns the audio
if is_audio_mono(audio)
    mono_audio=audio;
    mono_audio_sampling_rate=sampling_rate;
else
    % sum the two columns
    interm_audio = audio(:, 1) + audio(:, 2);
    max_amplitude = max(abs(interm_audio)); 
    interm_audio = interm_audio/max_amplitude;
    %  check the L/R channels for orig. peak Amplitudes
    peakL = max(abs(audio(:, 1)));
    peakR = max(abs(audio(:, 2))); 
    maxPeak = max([peakL peakR]);
    %apply audio's original peak amplitude to the normalized mono mixdown 
    mono_audio=interm_audio*maxPeak;
end

