function [success] = plot_waveform_signal(audio_file,figure_num)
%plot_waveform_signal plots signal as function of sampling rate
%   
figure(figure_num)
plot(audio_file);
xlabel('Sample Rate'); 
ylabel('Audio');

success=true;
end

