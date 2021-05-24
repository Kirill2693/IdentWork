cd C:\Users\Lenovo\Desktop\development\samples_15\positive;
name = "bas+300_15.txt";
threshold = 0.5;
data = importdata(name);
w = data(2:100,1);
t = data(2:100,2);
input_U = data(1,1);
t_sample = data(1,2);
u = (ones(length(w),1))*input_U;
figure;
plot(t,w);
hold on;
grid on;
hold off;
for i = 2:length(w)
    if abs(w(i))<threshold
        w(i) = NaN;
    end
end
miss_data = iddata(w,u,t_sample);
miss_data.Tstart = 0;
rec_data = misdata(miss_data,tf1);
w_nmis = rec_data.OutputData;
figure;
plot(rec_data);
hold on;
grid on;
hold off;
w_sm = smooth(w_nmis,5);
figure;
plot(t,w_sm,t,w_nmis,'--');
hold on;
grid on;
hold off;
cd C:\Users\Lenovo\Desktop\development\samples_15;