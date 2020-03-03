data = xlsread ('bank.xlsx');

[x, y] = size(data); 
kategori1 = data(1:4640 , 1); 
atribut1 = data(1:4640 , [4:7 11:16 19:20]);
kategori2 = data(4641:18559 , 1); 
atribut2 = data(4641:18559 , [4:7 11:16 19:20]);
kategori1 = kategori1'; 
kategori2 = kategori2'; 
atribut1 = atribut1'; 
atribut2 = atribut2'; 
jumlahDataY = length(atribut1); 
jumlahDataN = length(atribut2);
% ---------------------- PEMBAGIAN TRAINING TESTING --
YA1 = atribut1(: , 1 : round(jumlahDataY *(1/3))); 
YA2 = atribut1(: , round(jumlahDataY *(1/3)) : round(jumlahDataY * (2/3))-1);
YA3 = atribut1(: , round(jumlahDataY *(2/3)) + 1:end);

YK1 = kategori1(: , 1:round(jumlahDataY * (1/3))); 
YK2 = kategori1(: , round(jumlahDataY * (1/3)):round(jumlahDataY *(2/3))-1);
YK3 = kategori1(: , round(jumlahDataY * (2/3)) + 1:end);

NA1 = atribut2(: , 1:round(jumlahDataN*(1/3))); 
NA2 = atribut2(: , round(jumlahDataN*(1/3)):round(jumlahDataN* (2/3))-1);
NA3 = atribut2(: , round(jumlahDataN*(2/3)) + 1:end);
% Train = 1,2 / Testing = 3 InputTrain1 = [YA1 YA2 NA1 NA2];
TargetTrain1 = [YK1 , YK2 , NK1 , NK2];

InputTest1 = [YA3 , NA3]; 
TargetTest1 = [YK3 , NK3];

%------------------------------------------------------
% Train = 1,3 / Testing = 2 InputTrain2 = [YA1 YA3 NA1 NA3];
TargetTrain2 = [YK1 , YK3 , NK1 , NK3];

InputTest2 = [YA2 , NA2]; 
TargetTest2 = [YK2 , NK2];

%------------------------------------------------------
% Train = 2,3 / Testing = 1 InputTrain3 = [YA2 YA3 NA2 NA3];
TargetTrain3 = [YK2 , YK3 , NK2 , NK3];

InputTest3 = [YA1 , NA1]; 
TargetTest3 = [YK1 , NK1];

% Init var u/ Plot Plot = []; CellPlot = {}; legendLabel = {}; SumbuX = []; Iterasi = 50;
% trainFunction = {'trainlm', 'trainrp', 'trainscg', 'traincgb', 'traincgf', 'traincgp', 'trainoss', 'traingdx'};
trainFunction = {'traingdx'}; 
activationFunction = {'tansig','logsig'};
% activationFunction = {'purelin'};'trainbfg',tansig',

for i=1:length(trainFunction)
for j=1:length(activationFunction) 
    Plot = [];
    SumbuX = [];
legendLabel{end+1} = [ trainFunction{i} ', ' activationFunction{j}];
for n = 5:5:5
for m = 5:5:Iterasi 
[Akurasi1 , Hasil1 , luaran1] = newff(InputTrain1, TargetTrain1, InputTest1, TargetTest1, n, string(activationFunction{j}), trainFunction{i});
[Akurasi2 , Hasil2 , luaran2] = newff(InputTrain2, TargetTrain2, InputTest2, TargetTest2, n, string(activationFunction{j}));
[Akurasi3 , Hasil3 , luaran3] = newff(InputTrain3, TargetTrain3, InputTest3, TargetTest3, [n m], string(activationFunction{j}), trainFunction{i});
%	Average = (Akurasi1 + Akurasi2 + Akurasi3)/3;
 
Average = (Akurasi1 + Akurasi2 + Akurasi3)/3;
Plot = [Plot; Average]; 
SumbuX = [SumbuX; n];
% disp ([ trainFunction{i} ', 'activationFunction{j} ', neuron ' num2str(n) ' = ' num2str(Average) ' persen (' num2str(Akurasi1) ', ' num2str(Akurasi2) ', ' num2str(Akurasi3) ')']);
disp ([ trainFunction{i} ', ' activationFunction{j} ', neuron ' num2str(n),	'neuron ' num2str(m) ' =',	num2str(Average) ' persen (' num2str(Akurasi1) ', ' num2str(Akurasi2) ', ' num2str(Akurasi3) ')']);
end
CellPlot{end+1} = Plot;
end
end
end

% Menampilkan Plot
ShowPlot(CellPlot, SumbuX, legendLabel);
