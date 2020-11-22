function max_flat_FIR = lowpass_FIR(order, cutoff_frequency, sampling_frequency)
%LOWPASS_FIR Returns a discrete-time filter object.

% FIR maximally flat Lowpass filter designed using the MAXFLAT function.

% All frequency values are in Hz.
Fs = sampling_frequency;  % Sampling Frequency

N  = order;   % Order
Fc = cutoff_frequency;  % Cutoff Frequency

% Calculate the second-order sections coefficients to avoid round-off
%errors.
[b,a,b1,b2,sos_var,g] = maxflat(N, 'sym', Fc/(Fs/2));
max_flat_FIR = dfilt.df2sos(sos_var, g);

% [EOF]