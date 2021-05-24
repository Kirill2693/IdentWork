StartIndex;
Alfa;
accuracy;
SteadyData = w_offset(StartIndex:length(w_offset),1);
SteadyAverage = sum(SteadyData)/length(SteadyData);
K = SteadyAverage/Alfa;
St = 0.95*SteadyAverage;
if Alfa>0
FindSteady = find(w_offset<St);
else
FindSteady = find(w_offset>St);
end
First = FindSteady(end,1);
Last = First+1;
y_exp = w_offset(First:Last,1);
x_exp = t_offset(First:Last,1);
x_interp = (linspace(t_offset(First,1),t_offset(Last,1),50))';
y_interp = interp1(x_exp,y_exp,x_interp,'linear');
if Alfa>0
FindT = find(y_interp<St);
else
FindT = find(y_interp>St);
end
aT = FindT(end,1);
bT = aT+1;
if abs(St-y_interp(aT,1))<abs(St-y_interp(bT,1))
    t_index = aT;
else 
    t_index = bT;
end
T = x_interp(bT,1)/3;
y_model = Model(t_offset,K,T,Alfa);
%figure;
plot(t_offset,w_offset);
grid on;
hold on;
plot(t_offset,y_model);
RMSE = sqrt(MSE(w_offset,y_model));
R_2 = R2(w_offset,y_model);
sigma = ResidalNormMetric(w_offset,y_model);
display(name);
fprintf('T: %f, s\n',T);
fprintf('K: %f\n',K);
fprintf('RMSE: %f\n',RMSE);
fprintf('Sigma: %f\n',sigma);
fprintf('R2: %f\n',R_2);