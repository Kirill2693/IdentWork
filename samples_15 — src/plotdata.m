n%str2 = ["wat+60.txt","wat+70.txt","wat+100.txt","wat+200.txt","wat+300.txt","wat+350.txt"];
%str1 = ["wat-60.txt","wat-70.txt","wat-100.txt","wat-200.txt","wat-300.txt","wat-350.txt"];
%str = [str2 str1];
good_data = ["wat-60filter.txt","wat-70.txt","wat-100filter.txt","wat-200.txt","wat+60.txt","wat+70.txt","wat+100filter.txt","wat+200filter.txt"];
bad_data = ["wat-60.txt","wat-100.txt","wat-300.txt","wat-350.txt","wat+100.txt","wat+200.txt","wat+300.txt","wat+350.txt" ];
figure;
for i = 1:length(good_data)
name = good_data(1,i);
data = importdata(name);
w = data(:,1);
t = data(:,2)/1000;
plot(t,w);
hold on;
end
grid on;
title("хорошие данные")
xlabel('t, с');
ylabel('w, рад/c');
%lgd = legend(["60","70","100","200","300","350"],'Location','northwest','NumColumns',2);
%title(lgd,"Амплитуда входного сигнала");
legend(good_data)

figure;
for i = 1:length(bad_data)
name = bad_data(1,i);
data = importdata(name);
w = data(:,1);
t = data(:,2)/1000;
plot(t,w);
hold on;
end
grid on;
title("плохие данные")
xlabel('t, с');
ylabel('w, рад/c');
%lgd = legend(["60","70","100","200","300","350"],'Location','northwest','NumColumns',2);
%title(lgd,"Амплитуда входного сигнала");
legend(bad_data)