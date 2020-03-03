[A,B]= xlsread('bank_transform.xlsx');

data = A(1:4521,1:16);
dataBank = data';

class = A(1:4521,17);
classBank = class';

jumlData = length(classBank);
dTrain = round(jumlData*(2/3));

 %Model ke - 1
 KTrain1 = dataBank(:,1508:end);
 LabelTrain1 =classBank(1508:end);
 
 KTest1 = dataBank(:,1:1507);
 LabelTest1 =classBank(1:1507);
 
 rand('seed',491218382);
 net = newff(KTrain1,LabelTrain1,[100],{'logsig', 'purelin'},'traingdx');
 %net =newff(KTrain1,LabelTrain1,1,{'logsig'},'traingdx');

 [net,tr]= train(net,KTrain1,LabelTrain1);
 out1 = sim(net,KTest1);
 luaran1 = round(out1);
 Hasil1 = confusionmat(luaran1,LabelTest1);
 akurasiK1 = (sum(diag(Hasil1))/sum(sum(Hasil1)))*100;
 disp(['Akurasi Model 1 = ' num2str(akurasiK1) ' %']);