clear all;
a=linspace(0,pi/2,100);
b=linspace(0,pi/2,100);
c=linspace(0,pi/2,100);
d=linspace(-pi/12,pi/12,100);
figure;
x=(30.*cos(a+b+c)+25.*cos(a+b)+22.5.*cos(a)+10).*cos(d);
y=(30.*cos(a+b+c)+25.*cos(a+b)+22.5.*cos(a)+10).*sin(d);
z=-(30.*sin(a+b+c)+25.*sin(a+b)+22.5.*sin(a));
scatter3(x,y,z);
hold on;
n=1e5;
p=unifrnd(-100,100,[1 n]);
q=unifrnd(-100,100,[1 n]);
s=unifrnd(-100,100,[1 n]);
count=0;
for i =1:n
    if (p(i)>=x&q(i)>=y&s(i)>=z)
        count=count+1;
        x1(count)=p(i);
        y1(count)=q(i);
        z1(count)=s(i);
    end
end
hold on;
scatter3(x1,y1,z1);

