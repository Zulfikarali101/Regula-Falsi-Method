%Regulafalsi
%Zulfikar Ali Ibadurrahman
%12918030

Vm=4;
g=10;
x=15;
Hs=(1/g)*(Vm/(0.49*sin(2*x))^2);
i=0;
fa=1; %dummy index
fb=1; %dummy index

while fa*fb>0
    a=input('Masukkan nilai a: ');
    b=input('Masukkan nilai b: ');
    error=input('Masukkan error: ');
    fa=(0.49*(10^(1/2))*(a^(1/2)))-8;
    fb=(0.49*(10^(1/2))*(b^(1/2)))-8;
end
fc=error+1;
while abs(fc)>error;
    c=a-(((b-a)*fa)/(fb-fa));
    fc=(0.49*(10^(1/2))*(c^(1/2)))-8;
    if fc*fb<0
        a=c;
        fa=fc;
    else
        b=c;
        fb=fc;
        i=i+1;
    end
end

disp(['Solusi:  ' num2str(c)]);
disp(['Iterasi:  ' num2str(i)]);
