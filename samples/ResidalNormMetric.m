function [outputArg1] = ResidalNormMetric(out_data, model_data)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
residal = abs(out_data-model_data);
outputArg1 = norm(residal,2)/norm(out_data,2);
end

