function [Akurasi,Hasil,luaran] = ParkinsonsJST(InputTrain, TargetTrain, InputTest, TargetTest, JumlahNeuron, Aktivasi, TrainFunction)
 
rand('seed', 491218382)
global a 
a=InputTrain;
global b
b=TargetTrain;
 
net = newff(InputTrain, TargetTrain, JumlahNeuron, Aktivasi, TrainFunction);

[net,~]=train(net, InputTrain, TargetTrain);
save net.mat net
out = sim(net, InputTest);
 
luaran=round(out);
[brs klm]=size(luaran);
for x=1:brs
    for y=1:klm
        if luaran(x,y)==2
            luaran (x,y)=1;
        end
        if luaran(x,y)==-1 | luaran(x,y)==-2
            luaran(x,y)=0;
        end
    end      
    end
global Hasil
Hasil=confusionmat(TargetTest, luaran);
 
Akurasi=(sum(diag(Hasil))/sum(sum(Hasil)))*100;