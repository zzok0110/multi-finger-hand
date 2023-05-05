clear all;
a1_low=0;
a1_up=pi/2;
a2_low=0;
a2_up=pi/2;
a3_low=0;
a3_up=pi/2;
a1=a1_low+(a1_up-a1_low)*rand(10000,1);
a2=a2_low+(a2_up-a2_low)*rand(10000,1);
a3=a3_low+(a3_up-a3_low)*rand(10000,1);
for i=1:1:10000
    a=a1(i*1);
    b=a2(i*1);
    c=a3(i*1);
    x=35*cos(a)+25*cos(a+b)+23.25*cos(a+b+c);
    y=35*sin(a)+25*sin(a+b)+23.25*sin(a+b+c);
    z=0;
    plot(x,y,'g.');grid on;
    plot3(x,y,z,'b.');grid on;
    hold on;
end
title('等轴侧视图')
xlabel('x向移动距离/mm') 
ylabel('y向移动距离/mm')
zlabel('z向移动距离/mm')