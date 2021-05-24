str2 = ["wat+100_12V.txt","wat+200_12V.txt","wat+300_12V.txt","wat-100_12V.txt","wat-200_12V.txt","wat-300_12V.txt"];
figure;
for i = 1:length(str2)
name = str2(1,i);
data = importdata(name);
w = data(1:40,1);
t = data(1:40,2)/1000;
plot(t,w);
hold on;
end
grid on;
title("Графики переходных процессов")
xlabel('t, с');
ylabel('w, рад/c');
lgd = legend(["100","200","300","-100","-200","-300"],'Location','northwest','NumColumns',2);
title(lgd,"Амплитуда входного сигнала");