% Julien Meaud
% ME 4189 Structural Acoustics
% Problem 4.8 of Rao textbook

%close all
clear all

k=1;
c=0.1;
M=1;
tau=0.5;
Y0=0.001;

N=10000; %number of terms in the Fourier series

t=[0:0.01:5]*tau;

omega_n=sqrt(k/M);
xi=c./(2*sqrt(k*M));
omega0=2*pi./tau;

X0=Y0/2;

x=X0*ones(1,length(t));
y=X0*ones(1,length(t));
for j=1:N
    
    Y(j)=1i*Y0./(2*j*pi);
    y=y+Y(j)*exp(1i*j*omega0*t)+conj(Y(j))*exp(-1i*j*omega0*t);
    
    X(j)=1i*Y0./(2*j*pi)*(2*1i*xi*j*omega0./omega_n+1)./(1-(j*omega0/omega_n)^2+2*1i*xi*j*omega0./omega_n);    
    x=x+X(j)*exp(1i*j*omega0*t)+conj(X(j))*exp(-1i*j*omega0*t);
end

subplot(2,1,1)
plot(t,y,'r','LineWidth',2)
xlabel('Time (s)');ylabel('y (m)')

subplot(2,1,2)
plot(t,x,'LineWidth',2)
xlabel('Time (s)');ylabel('x (m)')



    
