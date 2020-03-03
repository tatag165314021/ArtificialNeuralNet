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
 net = newff(KTrain1,LabelTrain1,[70,100],{'logsig','logsig', 'purelin'},'traingdx');
 %net =newff(KTrain1,LabelTrain1,1,{'logsig'},'traingdx');

 [net,tr]= train(net,KTrain1,LabelTrain1);
 out1 = sim(net,KTest1);
 luaran1 = round(out1);
 Hasil1 = confusionmat(luaran1,LabelTest1);
 akurasiK1 = (sum(diag(Hasil1))/sum(sum(Hasil1)))*100;
 
  %Model ke - 2
 KTrain2 = dataBank(:,[1:1507 3015:end]);
 LabelTrain2 =classBank([1:1507 3015:end]);
 
 KTest2 = dataBank(:,1507:3014);
 LabelTest2=classBank(1507:3014);

 rand('seed',491218382);
 net = newff(KTrain2,LabelTrain2,[70,100],{'logsig','tansig', 'purelin'},'traingdx');
 %net =newff(KTrain2,LabelTrain2,1,{'logsig'},'traingdx');

 [net,tr]= train(net,KTrain2,LabelTrain2);
 out2 = sim(net,KTest2);
 luaran2 = round(out2);
 Hasil2 = confusionmat(luaran2,LabelTest2);
 akurasiK2 = (sum(diag(Hasil2))/sum(sum(Hasil2)))*100;
 
 %Model ke - 3
 KTrain3 = dataBank(:,1:3014);
 LabelTrain3 = classBank(1:3014);
 
 KTest3 = dataBank(:,3015:end);
 LabelTest3= classBank(3015:end);

 rand('seed',491218382);
 %net = newff(KTrain3,LabelTrain3,[70,100],{'tansig','tansig', 'purelin'},'traingdx');
 %net =newff(KTrain3,LabelTrain3,1,{'logsig'},'traingdx');

 [net,tr]= train(net,KTrain3,LabelTrain3);
 out3 = sim(net,KTest3);
 luaran3 = round(out3);
 Hasil3 = confusionmat(luaran3,LabelTest3);
 akurasiK3 = (sum(diag(Hasil3))/sum(sum(Hasil3)))*100;
 
 JmlHasil = akurasiK1+akurasiK2+akurasiK3;
 akurasiKF =(JmlHasil/3);
 disp(['Akurasi Model 1 = ' num2str(akurasiK1) ' %'])
 disp(['Akurasi Model 2 = ' num2str(akurasiK2) ' %'])
 disp(['Akurasi Model 3 = ' num2str(akurasiK3) ' %'])
 disp(['Akurasi Final   = ' num2str(akurasiKF) ' %']);
   