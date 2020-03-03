[num,txt,raw] =	xlsread('bank.xlsx');

[m,n] = size(num); 
for i=1:m
if num(i,2)>0&& num(i,2)<= 17 num(i,2)=1;
elseif num(i,2)> 17&& num(i,2)<= 65 num(i,2)=2;
elseif num(i,2)> 65&& num(i,2)<= 79 num(i,2)=3;
elseif num(i,2)> 79&& num(i,2)<= 99 num(i,2)=4;
elseif num(i,2)> 99 num(i,2)=5;
end

if isequal(txt{i+1,3},'admin.') num(i,3)=1;
elseif isequal(txt{i+1,3},'blue-collar') num(i,3)=2;
elseif isequal(txt{i+1,3},'entrepreneur') num(i,3)=3;
elseif isequal(txt{i+1,3},'housemaid') num(i,3)=4;
elseif isequal(txt{i+1,3},'management') num(i,3)=5;
elseif isequal(txt{i+1,3},'retired') num(i,3)=6;
elseif isequal(txt{i+1,3},'self-employed') num(i,3)=7;
elseif isequal(txt{i+1,3},'services')
end

if isequal(txt{i+1,4},'single') num(i,4)=1;
elseif isequal(txt{i+1,4},'married') num(i,4)=2;
elseif isequal(txt{i+1,4},'devorced') num(i,4)=3;
end    

if isequal(txt{i+1,5},'primary') num(i,5)=1;
elseif isequal(txt{i+1,5},'secondary') num(i,5)=2;
elseif isequal(txt{i+1,5},'tertiary') num(i,5)=3;
elseif isequal(txt{i+1,5},'unknown') num(i,5)=4;
end

if isequal(txt{i+1,6},'yes') num(i,6)=1;
elseif isequal(txt{i+1,6},'no') num(i,6)=2;
end

if isequal(txt{i+1,7},'yes') num(i,7)=1;
elseif isequal(txt{i+1,7},'no') num(i,7)=2;
elseif isequal(txt{i+1,7},'unknown') num(i,7)=3;
end

if isequal(txt{i+1,8},'yes') num(i,8)=1;
elseif isequal(txt{i+1,8},'no')
elseif isequal(txt{i+1,10},'aug') num(i,10)=6;
elseif isequal(txt{i+1,10},'oct') num(i,10)=7;
elseif isequal(txt{i+1,10},'sep') num(i,10)=8;
elseif isequal(txt{i+1,10},'nov') num(i,10)=9;
elseif isequal(txt{i+1,10},'dec') num(i,10)=10;
end

if isequal(txt{i+1,11},'tue') num(i,11)=1;
elseif isequal(txt{i+1,11},'wed') num(i,11)=2;
elseif isequal(txt{i+1,11},'thu') num(i,11)=3;
elseif isequal(txt{i+1,11},'fri') num(i,11)=4;
elseif isequal(txt{i+1,11},'mon') num(i,11)=5;
end

if num(i,12)>-3313 && num(i,12)<= 2417.846 num(i,12)=1;
elseif num(i,12)> 2417.846 && num(i,12)<= 8149.692 num(i,12)=2;
elseif num(i,12)> 8149.692 && num(i,12)<= 13881.54 num(i,12)=3;
elseif num(i,12)> 13881.54 && num(i,12)<= 19613.39 num(i,12)=4;
elseif num(i,12)> 19613.39 && num(i,12)<= 25345.24 num(i,12)=5;
elseif num(i,12)> 25345.24 && num(i,12)<= 31077.09 num(i,12)=6;
elseif num(i,12)> 31077.09 && num(i,12)<= 36808.94 num(i,12)=7;
elseif num(i,12)> 36808.94 && num(i,12)<= 42540.79 num(i,12)=8;
elseif num(i,12)> 42540.79 && num(i,12)<= 48272.64 num(i,12)=9;
elseif num(i,12)> 48272.64 && num(i,12)<= 54004.49 num(i,12)=10;
elseif num(i,12)> 54004.49 && num(i,12)<= 59736.34 num(i,12)=11;
elseif num(i,12)> 59736.34 && num(i,12)<= 65468.19 num(i,12)=12;
elseif num(i,12)> 65468.19 && num(i,12)<= 71200.04 num(i,12)=13;
end

if isequal(txt{i+1,16},'failure') num(i,16)=1;
elseif isequal(txt{i+1,16},'nonexistent') num(i,16)=2;
elseif isequal(txt{i+1,16},'success') num(i,16)=3;
end

if isequal(txt{i+1,1},'yes') num(i,1)=1;
elseif isequal(txt{i+1,1},'no') num(i,1)=2;
end

end