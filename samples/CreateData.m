str = ["wat+50_12V.txt","wat+100_12V.txt","wat+150_12V.txt","wat+200_12V.txt","wat+250_12V.txt","wat+300_12V.txt","wat+350_12v.txt"];
input = [50,100,150,200,250,300,350];
rng('shuffle');
index = randperm(7);
fit_index = sort(index(1,1:4));
val_index = sort(index(1,5:7));

