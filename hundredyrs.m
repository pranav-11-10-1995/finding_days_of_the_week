clc;
display(' FIND THE DAYS OF THE WEEK IN ANY YEAR FROM 2001 TO 2100');
prompt= '\nGIVE THE DATE\n';
date=input(prompt); 
day=date(1);
month=date(2);
year=date(3);
i=14;
j=12;
a=zeros(i,j);
for j=1:14
if j==1 || j==10
for i=1:14
    if i<=7
      a(i,j)=i;
    elseif i>7
      a(i,j)=i-7;
    end
end
end
end
a;
b=a;
temp=b(1,1);
for i=1:13
b(i,1)=b(i+1,1);
end  
b(14,1)=temp;
b;
for i=1:14
a(i,5)=b(i,1);
end
a;
b=a;
temp=b(1,5);
for i=1:13
b(i,5)=b(i+1,5);
end  
b(14,5)=temp;
b;
for i=1:14
a(i,8)=b(i,5);
end
a;
b=a;
temp=b(1,8);
for i=1:13
b(i,8)=b(i+1,8);
end  
b(14,8)=temp;
b;
for i=1:14
a(i,2)=b(i,8);
end
a;
for j=1:14
if j==3 || j==11
for i=1:14
    a(i,j)=a(i,2);
end
end
end
a;
b=a;
temp=b(1,2);
for i=1:13
b(i,2)=b(i+1,2);
end  
b(14,2)=temp;
b;
for i=1:14
a(i,6)=b(i,2);
end
a;
b=a;
temp=b(1,6);
for i=1:13
b(i,6)=b(i+1,6);
end  
b(14,6)=temp;
b;
for i=1:14
a(i,12)=b(i,6);
end
a;
for i=1:14
    a(i,9)=a(i,12);
end
a;
b=a;
temp=b(1,12);
for i=1:13
b(i,12)=b(i+1,12);
end  
b(14,12)=temp;
b;
for i=1:14
a(i,4)=b(i,12);
end
a;
for i=1:14
    a(i,7)=a(i,4);
end
a;
b=a;
for j=3:12
for i=8:13
    temp=b(8,j);
    b(i,j)=b(i+1,j);
end
b(14,j)=temp;
end
b;
for i=3:12
    if b(14,i)~=1
    b(14,i)=b(14,i)-1;
    elseif b(14,i)==1
        b(14,i)=7;
    end
end
b;
a=b;%
c=zeros(10,10);
d=c;
for i=2:3
    d(i-1,i)=2;
    d(i,i+7)=2;
end
for i=5:7
d(i,i+2)=2;
d(i+3,i)=2;
end
d;
d(1,1)=1;
d(10,1)=1;
for i=1:3
    d(i,i+6)=1;
    d(i+3,i+4)=1;
    d(i+6,i+2)=1;
end
d;
for i=1:3
    d(i,i+2)=3;
    d(i+3,i)=3;
end
for i=9:10
    d(i,i-2)=3;
    d(i-3,i)=3;
end
d;
for i=1:3
    d(i+7,i)=4;
    d(i+4,i+2)=4;
    d(i+1,i+4)=4;
end
d(1,9)=4;
d;
for i=3:5
    d(i,i+4)=5;
    d(i+3,i+2)=5;
end
for i=9:10
    d(i,i-6)=5;
end
d(1,10)=5;
d(10,10)=5;
d(3,1)=5;
d;
for i=7:9
    d(i,i)=6;
    d(i-5,i-6)=6;
end
for i=4:5
    d(i,i+5)=6;
end
d(1,5)=6;
d(10,5)=6;
d(7,1)=6;
d;
for i=3:5
    d(i,i)=7;
    d(i+3,i-2)=7;
end
for i=1:2
    d(i,i+5)=7;
    d(i+7,i+8)=7;
end
d;
d(3,4)=8;
d(6,2)=8;
d(8,10)=8;
d(1,8)=9;
d(4,6)=9;
d(7,4)=9;
d(10,2)=9;
d(2,10)=10;
d(5,8)=10;
d(8,6)=10;
d(1,4)=11;
d(4,2)=11;
d(6,10)=11;
d(9,8)=11;
i=2;
j=6;
while i<=8
d(i,j)=12;
i=i+3;
j=j-2;
end
d;
i=3;
j=8;
while i<=9
    d(i,j)=13;
    i=i+3;
    j=j-2;
end
d;
for i=1:10
    for j=1:10
if d(i,j)==0
    d(i,j)=14;
end
    end
end
d%
for i=1:10
    for j=1:10
        e(i,j)=((j+i*10)-10)+2000;
    end
end
e;%
f=zeros(37,7);
for i=1:31
    f(i,1)=i;
end
f;
g=f;
for i=1:31
f(i+1,2)=g(i,1);
end
f;
g=f;
for i=1:32
    f(i+1,3)=g(i,2);
end
f;
g=f;
for i=1:33
    f(i+1,4)=g(i,3);
end
f;
g=f;
for i=1:34
    f(i+1,5)=g(i,4);
end
f;
g=f;
for i=1:35
    f(i+1,6)=g(i,5);
end
f;
g=f;
for i=1:36
    f(i+1,7)=g(i,6);
end
f;%
for i=32:37
f(i,1)=i;
end
f;%
for i=1:10
    for j=1:10
if e(i,j)==year
    iwant=i;
    jwant=j;
end
    end
end
rowwant=d(iwant,jwant);
colwant=a(rowwant,month);
for i=1:37
   if f(i,1)==day
       comp=i;
   end
end
for i=1:37
   if f(i,colwant)==day
       daywant=i;
   end
end
diff=daywant-comp;
day=day+diff;
if day==1 || day==8 || day==15 || day==22 || day==29 || day==36
    display('     MONDAY');
    return
end
if day==2 || day==9 || day==16 || day==23 || day==30 || day==37
    display('     TUESDAY');
     return
end
if day==3 || day==10 || day==17 || day==24 || day==31
    display('     WEDNESDAY');
     return
end
if day==4 || day==11 || day==18 || day==25 || day==32
    display('     THURSDAY');
     return
end
if day==5 || day==12 || day==19 || day==26 || day==33
    display('      FRIDAY');
     return
end
if day==6 || day==13 || day==20 || day==27 || day==34
    display('       SATURDAY');
     return
end
if day==7 || day==14 || day==21 || day==28 || day==35
    display('       SUNDAY');
     return
end
    











    











