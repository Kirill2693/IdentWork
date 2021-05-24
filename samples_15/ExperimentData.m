%plus_data = ["wat-70.txt","wat-200.txt","wat+60.txt","wat+70.txt"];
%good_amplitude = [-70,-200,60,70];
%Создания датасета для идентификации положительных данных
cd C:\Users\Lenovo\Desktop\development\samples_15\positive;
files =  dir ('**/*.txt');
name = files(1).name;
data = importdata(name);
input_U = data(1,1);
t_sample = data(1,2);
w = data(2:100,1);
u = (ones(length(w),1))*input_U;
exp1 = iddata(w,u,t_sample);
exp1.Tstart = 0;
exp_dataset = struct('dat',exp1);
for i = 2:length(files)
name = files(i).name;
data = importdata(name);
t_sample = data(1,2);
input_U = data(1,1);
w = data(2:100,1);
u = (ones(length(w),1))*input_U;
exp1 = iddata(w,u,t_sample);
exp1.Tstart = 0;
exp_dataset(i).dat = exp1;
t = data(2:100,2)/1000;
end
exp_dataset;
cd C:\Users\Lenovo\Desktop\development\samples_15;
