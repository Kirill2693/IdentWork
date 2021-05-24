good_data = ["wat-70.txt","wat-200.txt","wat+60.txt","wat+70.txt"];
good_amplitude = [-70,-200,60,70];

data = importdata(good_data(1,1));
w = data(:,1);
t = data(:,2)/1000;
u = (ones(length(w),1))*good_amplitude(1,1);
exp1 = iddata(w,u,0.01);
exp1.Tstart = 0;

data = importdata(good_data(1,2));
w = data(:,1);
t = data(:,2)/1000;
u = (ones(length(w),1))*good_amplitude(1,2);
exp2 = iddata(w,u,0.01);
exp2.Tstart = 0;

data = importdata(good_data(1,3));
w = data(:,1);
t = data(:,2)/1000;
u = (ones(length(w),1))*good_amplitude(1,3);
exp3 = iddata(w,u,0.01);
exp3.Tstart = 0;

data = importdata(good_data(1,4));
w = data(:,1);
t = data(:,2)/1000;
u = (ones(length(w),1))*good_amplitude(1,4);
exp4 = iddata(w,u,0.01);
exp4.Tstart = 0;

exp = merge(exp1,exp2,exp3,exp4);

    