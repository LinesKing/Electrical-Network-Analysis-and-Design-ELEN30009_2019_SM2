clear all
close all
clc

%% Part 1(b)
t=0:0.01:10;
y=(100*exp(-0.5*t)).*(t>=0&t<=2)+(-63.2*exp(-0.5*t+1)).*(t>2);
figure(1);
plot(t,y,'r','linewidth',2);
xlabel('t/us');
ylabel('vo(t)/V');
axis([0 10 -100 100]);
grid on

%% Part 4(d)
t = 0:0.1:80;
y1 = 10*t.*(t>=0&t<=40) + (800-10*t).*(t>40&t<=80);
y2 = 40*t.*(t>=0&t<=10) + 400.*(t>10&t<=40) + (2000-40*t).*(t>40&t<=50);
y3 = 400*t.*(t>=0&t<=1) + 400.*(t>1&t<=40) + (16400-400*t).*(t>40&t<=41);
figure(2);
plot(t,y1,'r','linewidth',2);
hold on;
plot(t,y2,'b','linewidth',2);
hold on;
plot(t,y3,'k','linewidth',2);
xlabel('t');
ylabel('y');
axis([0 100 0 500]);
legend('ya(t)','yb(t)','yc(t)')
grid on