function [success] = plot_envelope_array(envelope_array,num)
%PLOT_ENVELOPE_ARRAY Plot the highest and lowest frequencies in envelope
%array against the sampling rate

%plot the first index (lowest frequency channel) 
success=plot_waveform_signal(envelope_array{1}, num);

%plot the last index 
success=success&plot_waveform_signal(envelope_array{length(envelope_array)}, num+1);
end

