name;
alfa = 100;
data = importdata(name);
w = data(:,1);
t = data(:,2);
offset = 100;
w_offset = w(3:length(w),1);
t_offset = (t(3:length(t),1)-100)/1000;
t = t/1000;
plot(t,w);
hold on;
plot(t_offset,w_offset);
grid on;
hold on;
summ=0;
n=0;
for i=15:length(w_offset)
  summ = summ+w_offset(i,1);
  n = n+1;
end
SteadyAverage = summ/n;
SA(1,1) = SteadyAverage;
SA(1,2) = SteadyAverage;
TA(1,1) = min(t_offset);
TA(1,2) = max(t_offset);
K = SteadyAverage/alfa;
plot(TA,SA);
