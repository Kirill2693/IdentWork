function [Out] = R2(w_offset,  w_model)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
Up = MSE(w_offset, w_model);
Mean = (sum(w_offset))/length(w_offset);
Residal = (w_offset-Mean).^2;
Low = sum(Residal);
Out = 1-(Up/Low); 
end

