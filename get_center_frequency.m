function [center_freq] = get_center_frequency(lower_freq,upper_freq)
% GET_CENTER_FREQUENCY gets center frequency between two bounds
product = abs(lower_freq*upper_freq);
r = sqrt(product);
center_freq =r;
end

