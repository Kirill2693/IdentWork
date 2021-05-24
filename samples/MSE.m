function [outputArg1] = MSE(OutData, OutModel)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
summ = 0;
for i = 1:length(OutData)
 summ = summ+(OutData(i,1)-OutModel(i,1))^2;
end
outputArg1 = summ/length(OutData);
end

