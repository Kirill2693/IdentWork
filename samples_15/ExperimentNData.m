%Создания датасета для идентификации отрицательных данных
cd C:\Users\Lenovo\Desktop\development\samples_15\negative;
files =  dir ('**/*.txt');
name = files(1).name;
data = importdata(name);
input_U = data(1,1);
t_sample = data(1,2);
w = -data(2:100,1);
u = (ones(length(w),1))*input_U;
exp1 = iddata(w,u,t_sample);
exp1.Tstart = 0;
exp_Ndataset = struct('dat',exp1);
for i = 2:length(files)
name = files(i).name;
data = importdata(name);
t_sample = data(1,2);
input_U = data(1,1);
w = -data(2:100,1);
u = (ones(length(w),1))*input_U;
exp1 = iddata(w,u,t_sample);
exp1.Tstart = 0;
figure;
plot(exp1);
exp_Ndataset(i).dat = exp1;

end
exp_Ndataset;
cd C:\Users\Lenovo\Desktop\development\samples_15;
