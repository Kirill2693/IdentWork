function [K,T] = LnCalcCoef(w_data, t_data,Alfa, StartIndex, LastIndex)
n = 0;
summ =0;
for i=StartIndex:length(w_data)  
     summ = summ+w_data(i,1);
     n = n+1;
end
SteadyAverage = summ/n;
K = SteadyAverage/Alfa;
y_data = log(1-(w_data(1:LastIndex,1)/(Alfa*K)));
x_data = t_data(1:LastIndex,1);
figure;
plot(x_data,y_data,'o')
grid on;
hold on;
koeff_model = polyfit(x_data,y_data,1);
y_model = polyval(koeff_model,x_data);
y_model_no_offset = x_data*koeff_model(1,1);
plot(x_data,y_model);
plot(x_data,y_model_no_offset);
T = abs(1/koeff_model(1,1));
end

