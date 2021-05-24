function [y_model] = Model(t_data, K, T, alfa)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
y_model = alfa*K*(1-exp(-(t_data/T)));
end

