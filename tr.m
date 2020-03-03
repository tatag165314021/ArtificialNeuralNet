[num,txt,raw] =	xlsread('bank.xlsx');

[m,n] = size(num); 
for i=1:m
if num(i,1)>0 && num(i,1)<= 17 num(i,1)=1;
elseif num(i,1)> 17 && num(i,1)<= 65 num(i,1)=2;
elseif num(i,1)> 65 && num(i,1)<= 79 num(i,1)=3;
elseif num(i,1)> 79 && num(i,1)<= 99 num(i,1)=4;
elseif num(i,1)> 99 num(i,1)=5;
end

if num(i,6)>= -3313 && num(i,6)<= 2417.846 num(i,6)=1;
elseif num(i,6)> 2417.846 && num(i,6)<= 8148.692 num(i,6)=2;
elseif num(i,6)> 8148.692 && num(i,6)<= 13879.54 num(i,6)=3;
elseif num(i,6)> 13879.54 && num(i,6)<= 19610.38 num(i,6)=4;
elseif num(i,6)> 19610.38 && num(i,6)<= 25341.23 num(i,6)=5;
elseif num(i,6)> 25341.23 && num(i,6)<= 31072.08 num(i,6)=6;
elseif num(i,6)> 31072.08 && num(i,6)<= 36802.92 num(i,6)=7;
elseif num(i,6)> 36802.92 && num(i,6)<= 42533.77 num(i,6)=8;
elseif num(i,6)> 42533.77 && num(i,6)<= 48264.62 num(i,6)=9;
elseif num(i,6)> 48264.62 && num(i,6)<= 53995.46 num(i,6)=10;
elseif num(i,6)> 53995.46 && num(i,6)<= 59726.31 num(i,6)=11;
elseif num(i,6)> 59726.31 && num(i,6)<= 65457.15 num(i,6)=12;
elseif num(i,6)> 65457.15 && num(i,6) <= 71188 num(i,6)=13;
end

if num(i,12)>= 4 && num(i,12)<= 236.3846 num(i,12)=1;
elseif num(i,12)> 236.3846 && num(i,12)<= 468.7692 num(i,12)=2;
elseif num(i,12)> 468.7692 && num(i,12)<= 701.1538 num(i,12)=3;
elseif num(i,12)> 701.1538 && num(i,12)<= 933.5385 num(i,12)=4;
elseif num(i,12)> 933.5385 && num(i,12)<= 1165.923 num(i,12)=5;
elseif num(i,12)> 1165.923 && num(i,12)<= 1398.308 num(i,12)=6;
elseif num(i,12)> 1398.308 && num(i,12)<= 1630.692 num(i,12)=7;
elseif num(i,12)> 1630.692 && num(i,12)<= 1863.077 num(i,12)=8;
elseif num(i,12)> 1863.077 && num(i,12)<= 2095.462 num(i,12)=9;
elseif num(i,12)> 2095.462 && num(i,12)<= 2327.846 num(i,12)=10;
elseif num(i,12)> 2327.846 && num(i,12)<= 2560.231 num(i,12)=11;
elseif num(i,12)> 2560.231 && num(i,12)<= 2792.615 num(i,12)=12;
elseif num(i,12)> 2792.615 && num(i,12)<= 3025 num(i,12)=13;
end 

if num(i,14)>= -1 && num(i,14)<= 66.07692 num(i,14)=1;
elseif num(i,14)> 66.07692 && num(i,14)<= 133.1538 num(i,14)=2;
elseif num(i,14)> 133.1538 && num(i,14)<= 200.2308 num(i,14)=3;
elseif num(i,14)> 200.2308 && num(i,14)<= 267.3077 num(i,14)=4;
elseif num(i,14)> 267.3077 && num(i,14)<= 334.3846 num(i,14)=5;
elseif num(i,14)> 334.3846 && num(i,14)<= 401.4615 num(i,14)=6;
elseif num(i,14)> 401.4615 && num(i,14)<= 468.5385 num(i,14)=7;
elseif num(i,14)> 468.5385 && num(i,14)<= 535.6154 num(i,14)=8;
elseif num(i,14)> 535.6154 && num(i,14)<= 602.6923 num(i,14)=9;
elseif num(i,14)> 602.6923 && num(i,14)<= 669.7692 num(i,14)=10;
elseif num(i,14)> 669.7692 && num(i,14)<= 736.8462 num(i,14)=11;
elseif num(i,14)> 736.8462 && num(i,14)<= 803.9231 num(i,14)=12;
elseif num(i,14)> 803.9231 && num(i,14)<= 871 num(i,14)=13;
end

end
