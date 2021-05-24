cd C:\Users\Lenovo\Desktop\development\samples_15\positive;
files =  dir ('**/*.txt');
threshold = 0.5;
for i = 1:length(files)
name = files(i).name;
data = importdata(name);
w = data(2:100,1);
t = data(2:100,2);
input_U = data(1,1);
t_sample = data(1,2);
figure;
w_sm = smooth(w,5);
[TF,L,U,C] = isoutlier(w,'movmedian',6);
plot(t,w_sm,t,w,'--',t(TF),w(TF),'x');
hold on;
grid on;
hold off;
end
cd C:\Users\Lenovo\Desktop\development\samples_15\negative;
files =  dir ('**/*.txt');
for i = 1:length(files)
name = files(i).name;
data = importdata(name);
w = -data(2:100,1);
t = data(2:100,2);
input_U = data(1,1);
t_sample = data(1,2);
figure;
w_sm = smooth(w,5);
[TF,L,U,C] = isoutlier(w_sm,'movmedian',6);
plot(t,w_sm,t,w,'--',t(TF),w_sm(TF),'x');
hold on;
grid on;
hold off;
end
cd C:\Users\Lenovo\Desktop\development\samples_15;
