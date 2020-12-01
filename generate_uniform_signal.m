function [isUniformSignalGenerated,uniform_signal] = generate_uniform_signal(signal_array)
% GENERATE_UNIFORM_SIGNAL generates a uniform signal
%   but adding together a number of different channels together
indexer=length(signal_array);
y=signal_array{1};
for c=2:indexer
    y=y+signal_array{c};
abs_y=abs(y);
max_y=max(abs_y);
normalized_y=(y/max_y);
uniform_signal=normalized_y;
isUniformSignalGenerated=true;
end

