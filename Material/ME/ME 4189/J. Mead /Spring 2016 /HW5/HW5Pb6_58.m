% ME 4189 Structural vibrations
% HW5 Problem 6.58
%  Julien Meaud
% 03/29/2016
% ------------------------------------------------------------------------
close all
clear all

m=[ 3 2 1;2 2 1;1 1 1];  %mass matrix (divided by ml^2)


p=[1 -9 18 -6];  %polynomial for characteristic equation
r=roots(p)

alpha1=r(3)
alpha2=r(2)
alpha3=r(1)

% natural frequency (normalized by sqrt(g/l)
Omega1=sqrt(alpha1)  
Omega2=sqrt(alpha2)
Omega3=sqrt(alpha3)

% 1st modal vectors
A=[-2*alpha1 -alpha1;2*(1-alpha1) -alpha1]
B=[-3*(1-alpha1);2*alpha1]
X1=A\B
X1=[1;X1];

% 2nd modal vectors
A=[-2*alpha2 -alpha2;2*(1-alpha2) -alpha2]
B=[-3*(1-alpha2);2*alpha2]
X2=A\B
X2=[1;X2]

% 2nd modal vectors
A=[-2*alpha3 -alpha3;2*(1-alpha3) -alpha3]
B=[-3*(1-alpha3);2*alpha3]
X3=A\B
X3=[1;X3]

% mass normalization of modal vectors -------------------------------------
V1=transpose(X1)*m*(X1)
X1=X1./sqrt(V1)

V2=transpose(X2)*m*(X2)
X2=X2./sqrt(V2)

V3=transpose(X3)*m*(X3)
X3=X3./sqrt(V3)

% mass normalized modal matrix --------------------------------------------
X=[X1 X2 X3]

%initial conditions for modal coordinates
q0=transpose(X)*m*[0;0;1]

T1=X*[0.8433;0;0]  %1st mode
T2=X*[0;-0.5277;0] % 2nd mode
T3=X*[0;0;0.1019] % 3rd mode

% numerical values (for plot) --------------------------------------------
g=9.8;
l=1;
omega1=sqrt(g/l)*Omega1;
omega2=sqrt(g/l)*Omega2;
omega3=sqrt(g/l)*Omega3;

theta30=1;  %initial condition for theta3
t=[0:0.01:5]*2*pi./omega1; % time vector

theta=theta30*(T1*cos(omega1*t)+T2*cos(omega2*t)+T3*cos(omega3*t)); %vector theta1,theta2,theta3(t)
figure(1)
plot(t,theta(1,:))
hold on
plot(t,theta(2,:),'r--')
plot(t,theta(3,:),'g','LineWidth',2)
xlabel('Time (s)');ylabel('\theta_i(t)')
legend('\theta_1','\theta_2','\theta_3')
