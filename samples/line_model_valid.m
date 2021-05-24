function [sigma_valid,R2_valid] = line_model_valid(K,T,tau,amplitude,exp_data)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
w = exp_data;
lin_model = tf(K,[T,1],'InputDelay',tau);
opt = stepDataOptions('StepAmplitude',amplitude);
time = (0:0.05:2)';
[Y,T] = step(lin_model,time,opt);
sigma_valid = ResidalNormMetric(w,Y);
R2_valid = R2(w,Y);
end

