str = ["wat-350_12V.txt","wat-300_12V.txt","wat-250_12V.txt","wat-200_12V.txt","wat-150_12V.txt","wat-100_12V.txt","wat-50_12V.txt",...
       "wat+50_12V.txt","wat+100_12V.txt","wat+150_12V.txt","wat+200_12V.txt","wat+250_12V.txt","wat+300_12V.txt","wat+350_12V.txt"];
%str = ["wat+100_12V.txt","wat+200_12V.txt","wat+300_12V.txt","wat-100_12V.txt","wat-200_12V.txt","wat-300_12V.txt"];
%input = [100,200,300,-100,-200,-300];
input = [-350,-300,-250,-200,-150,-100,-50,50,100,150,200,250,300,350];
rng('shuffle');
index = randperm(7);
fit_index = sort(index(1,1:4));
val_index = sort(index(1,5:7));
for i = 1:length(input)
    name = str(1,i);
    Alfa = input(1,i);
    PrepareData;
    StartIndex = 15;
    accuracy = 1;
    InterpCalc;
    Alfa_array(i,1) = Alfa;
    Offset_array(i,1) = ofs;
    K_array(i,1) = K;
    T_array(i,1) = T;
    RMSE_array(i,1) = RMSE;
    Sigma_array(i,1) = sigma;
    R2_array(i,1) = R_2;
end
T = table(Alfa_array,Offset_array,K_array,T_array,RMSE_array,Sigma_array,R2_array);
