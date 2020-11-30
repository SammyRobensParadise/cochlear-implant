function [isModulated,modulated_signal_cells] = modulate_signals(information_signal,carrier_signal)
% MODULATE_SIGNAL modulates an information signal with a cosine
% carrier signal
indexer=size(information_signal);
isModulated = information_signal;
modulated_signal_cells = carrier_signal;
end

