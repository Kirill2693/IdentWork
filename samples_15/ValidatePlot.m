cd C:\Users\Lenovo\Desktop\development\samples_15\negative_sub_data;
files =  dir ('**/*.txt');
name = files(2).name;
data = importdata(name);
w = data(2:101,1)*(-1);
t = data(2:101,2)/1000;
amplitude_plus = data(1,1);

lin_model_plus = tf(0.8619,[0.2585, 1]);
opt = stepDataOptions('StepAmplitude',amplitude_plus);
time = (0:0.015:1.5)';
[Y,T] = step(lin_model_plus,time,opt);
plot(T,Y,'--','DisplayName',"Line Model");
legend;
grid on;
hold on;
plot(t,w,'DisplayName',name);
xlabel('t, с');
ylabel('w, рад/c');

cd C:\Users\Lenovo\Desktop\development\samples_15;