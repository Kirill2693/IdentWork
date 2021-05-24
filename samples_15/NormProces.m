%графики части нормированных переходных процессов
cd C:\Users\Lenovo\Desktop\development\samples_15\positive_sub_data;
files =  dir ('**/*.txt');
figure;
for i = 1:length(files)
name = files(i).name;
data = importdata(name);
w = data(2:50,1);
t = data(2:50,2);
w_sm = smooth(w,5);
[val,idx] = max(w_sm);
w_norm = w_sm/val;
plot(t,w_norm,'DisplayName',name);
hold on;
grid on;
end
legend;
hold off;
cd C:\Users\Lenovo\Desktop\development\samples_15\negative_sub_data;
files =  dir ('**/*.txt');
threshold = 0.5;
figure;
for i = 1:length(files)
name = files(i).name;
data = importdata(name);
w = data(2:50,1);
t = data(2:50,2);
w_sm = smooth(w,5);
[val,idx] = max(w_sm);
w_norm = (w_sm/val)*(-1);
plot(t,w_norm,'DisplayName',name);
hold on;
grid on;
end
legend;
cd C:\Users\Lenovo\Desktop\development\samples_15;