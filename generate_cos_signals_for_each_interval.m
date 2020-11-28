function [isGenerated,cosine_signals] = generate_cos_signals_for_each_interval(intervals,center_frequencies,rectified_signals)
% generate_cos_signals_for_each_interval generates a cosine signal and
% stores it to a cell array for each signal

% make cells for cosine signals
cosine_signal_cells=cell(intervals,1);

indexer=intervals;
for c=1:indexer
    cosine_signal_cells{c}=generate_cos_signal(rectified_signals{c},center_frequencies{c},c);
cosine_signals=cosine_signal_cells;
isGenerated=true;
end

