str_reliabel = ["wat-350_12V.txt","wat-300_12V.txt","wat-250_12V.txt","wat-200_12V.txt","wat-150_12V.txt","wat-100_12V.txt",...
       "wat+50_12V.txt","wat+100_12V.txt","wat+150_12V.txt","wat+200_12V.txt","wat+250_12V.txt","wat+300_12V.txt","wat+350_12V.txt"];
input_reliabel = [-350,-300,-250,-200,-150,-100,50,100,150,200,250,300,350];
sigma_validate = zeros(1,length(str_reliabel))';
R2_validate = zeros(1,length(str_reliabel))';
for i = 1:length(str_reliabel)
     name = str_reliabel(1,i);
     data = importdata(name);
     amplitude = input_reliabel(1,i);
     w = data(1:41,1);
     [Sig,Rtwo] = line_model_valid(K_m,T_m,Tau_m,amplitude,w);
     sigma_validate(i,1) = Sig;
     R2_validate(i,1) = Rtwo;
end
Val_tabel = table(input_reliabel',sigma_validate,R2_validate);