function [outputArg1] = ResideNormMetric(out_data, model_data)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
residal = abs(out_data-model_data);
outputArg1 = norm(residal,2)/norm(w_offset,2);
end

