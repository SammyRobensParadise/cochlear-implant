function [is_mono] = is_audio_mono(audio)
% IS_AUDIO_MONO determine if the stereo is sterio (2 channels/columns) or mono (1 
% channel/column). 
[~,n]=size(audio);
if n==2
    is_mono=false;
elseif n==1
    is_mono=true;
else 
    is_mono=false;
end

