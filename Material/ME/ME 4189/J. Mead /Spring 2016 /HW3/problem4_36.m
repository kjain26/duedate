% Julien Meaud
% ME 4189 Structural vibrations
% Problem 4.17: unit impulse response

close all
clear all

k=1;
m=1;

omega_n=sqrt(k/m);

Tn=2*pi./omega_n;
t=[0:0.01:5]*Tn;



%undamped case ------------------------------------------------------------
x=1./(m*omega_n)*sin(omega_n*t);

subplot(2,2,1)
plot(t,x)
xlabel('Time (s)');ylabel('Unit impulse response');
title('Undamped')
grid on

%underdamped case ---------------------------------------------------------
xi=0.1;
omega_d=omega_n*sqrt(1-xi^2);
x=1./(m*omega_d)*sin(omega_d*t).*exp(-xi*omega_n*t);

subplot(2,2,2)
plot(t,x)
xlabel('Time (s)');ylabel('Unit impulse response')
title('Underdamped')
grid on

%critically damped case ---------------------------------------------------------
x=t./(m).*exp(-omega_n*t);
subplot(2,2,3)
plot(t,x)
xlabel('Time (s)');ylabel('Unit impulse response')
title('Critically damped')
grid on

%overdamped case ---------------------------------------------------------
xi=1.5;
x=1./(2*m*omega_n*sqrt(xi^2-1)).*exp(-xi*omega_n*t).*(exp(sqrt(xi^2-1)*omega_n*t)-exp(-sqrt(xi^2-1)*omega_n*t));
subplot(2,2,4)
plot(t,x)
xlabel('Time (s)');ylabel('Unit impulse response')
grid on
title('Overdamped')

