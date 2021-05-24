name;
Alfa;
data = importdata(name);
w = data(1:40,1);
t = data(1:40,2);
SampleTime = abs(t(2,1)-t(1,1));
if Alfa>0
f = find(w>0.1);
else
f = find(w<-0.1);
end
offset = (f(1,1)-2)*SampleTime;
OffsetData = (offset/SampleTime)+1;
w_offset = w(OffsetData:length(w),1);
t_offset = (t(OffsetData:length(t),1)-offset)/1000;
t = t/1000;
%figure;
%plot(t,w);
hold on;
title(name);
xlabel('t, с');
ylabel('w, рад/c');
plot(t_offset,w_offset); %Строим гараффик
grid on;
ofs = offset/1000;
disp(name);
disp("Sample Time(s):");
disp(SampleTime/1000);
disp("Offset(s):");
disp(ofs);