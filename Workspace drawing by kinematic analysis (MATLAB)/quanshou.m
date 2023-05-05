clear all;
a1_low=0;
a1_up=pi/2;
a2_low=0;
a2_up=pi/2;
a3_low=0;
a3_up=pi/2;
a4_low=pi/6;
a4_up=3*pi/4;
a1=a1_low+(a1_up-a1_low)*rand(20000,1);
a2=a2_low+(a2_up-a2_low)*rand(20000,1);
a3=a3_low+(a3_up-a3_low)*rand(20000,1);
a4=a4_low+(a4_up-a4_low)*rand(20000,1);
for i=1:1:20000
    a=a1(i*1);
    b=a2(i*1);
    c=a3(i*1);
    d=a4(i*1);
    x2=35*cos(a)+25*cos(a+b)+23.25*cos(a+b+c);
    y2=35*sin(a)+25*sin(a+b)+23.25*sin(a+b+c);
    z2=-4;
    plot3(x2,y2,z2,'k.');
    grid on;
    x3=35*cos(a)+25*cos(a+b)+23.25*cos(a+b+c);
    y3=35*sin(a)+25*sin(a+b)+23.25*sin(a+b+c);
    z3=16;
    plot3(x3,y3,z3,'y.');
    grid on;
    x4=35*cos(a)+25*cos(a+b)+23.25*cos(a+b+c);
    y4=35*sin(a)+25*sin(a+b)+23.25*sin(a+b+c);
    z4=36;
    plot3(x4,y4,z4,'r.');
    grid on;
    x5=35*cos(a)+25*cos(a+b)+23.25*cos(a+b+c);
    y5=35*sin(a)+25*sin(a+b)+23.25*sin(a+b+c);
    z5=56;
    plot3(x5,y5,z5,'c.');
    grid on;
    x1=[25*sin(a+b+c)+25*sin(a+b)+23.25*sin(a)];
    y1=[25*cos(a+b+c)+25*cos(a+b)+23.25*cos(a)]*sin(d);
    z1=[25*cos(a+b+c)+25*cos(a+b)+23.25*cos(a)]*cos(d);
    plot3(x1,y1,z1,'b.');
    grid on;
    hold on;
end
title('等轴侧视图')
xlabel('x向移动距离/mm') 
ylabel('y向移动距离/mm')
zlabel('z向移动距离/mm')