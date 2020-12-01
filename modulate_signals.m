function [isModulated,modulated_signal_cells] = modulate_signals(information_signal,carrier_signal)
% MODULATE_SIGNAL modulates an information signal with a cosine
% carrier signal

indexer=size(information_signal);
indexer=indexer(1);
signal_cells=cell(indexer,1);

for c=1:indexer
    signal_cells{c}=carrier_signal{c}.*information_signal{c}; 
modulated_signal_cells = signal_cells;
isModulated = true;
end

