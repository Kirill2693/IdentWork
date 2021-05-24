%построение гафиков эксперементальных данных
cd C:\Users\Lenovo\Desktop\development\samples_15\positive;
files =  dir ('**/*.txt');
figure;
for i = 1:length(files)
    name = files(i).name;
    data = importdata(name);
    w = data(:,1);
    t = data(:,2)/1000;
    plot(t,w);
    hold on;
end
grid on;
title("Положительная часть")
xlabel('t, с');
ylabel('w, рад/c');
cd C:\Users\Lenovo\Desktop\development\samples_15\negative;
files =  dir ('**/*.txt');
figure;
for i = 1:length(files)
    name = files(i).name;
    data = importdata(name);
    w = data(:,1)*(-1);
    t = data(:,2)/1000;
    plot(t,w);
    hold on;
end
grid on;
title("Отрицательная часть")
xlabel('t, с');
ylabel('w, рад/c');
cd C:\Users\Lenovo\Desktop\development\samples_15