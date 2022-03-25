function [sys,x0,str,ts] = Plant(t,x,u,flag)
switch flag,
case 0,
    [sys,x0,str,ts]=mdlInitializeSizes;
case 1,
    sys=mdlDerivatives(t,x,u);
case 3,
    sys=mdlOutputs(t,x,u);
case {2,4,9}
    sys=[];
otherwise
    error(['Unhandled flag = ',num2str(flag)]);
end
function [sys,x0,str,ts]=mdlInitializeSizes
sizes = simsizes;
sizes.NumContStates  = 10;
sizes.NumDiscStates  = 0;
sizes.NumOutputs     = 10;
sizes.NumInputs      = 15;
sizes.DirFeedthrough = 0;
sizes.NumSampleTimes = 1;
sys = simsizes(sizes);
% x0  = [ 1 2 3 4 5  1 2 3 4 5]*1;
x0  = [ 1 2 3 4 5  1 2 3 4 5]*10;
str = [];
ts  = [0 0];
function sys=mdlDerivatives(t,x,u)
u1=u(1);
u2=u(2);
u3=u(3);
u4=u(4);
u5=u(5);

% v1=u(1+10);
% v2=u(2+10);
% v3=u(3+10);
% v4=u(4+10);
% v5=u(5+10);

v1=x(1+5);
v2=x(2+5);
v3=x(3+5);
v4=x(4+5);
v5=x(5+5);

sys(1)=v1;
sys(2)=v2;
sys(3)=v3;
sys(4)=v4;
sys(5)=v5;

di=sin(30*t);
sys(6)=v1^3+u1+di;
sys(7)=v2^3+u2+di;
sys(8)=v3^3+u3+di;
sys(9)=v4^3+u4+di;
sys(10)=v5^3+u5+di;

function sys=mdlOutputs(t,x,u)
sys(1)=x(1);
sys(2)=x(2);
sys(3)=x(3);
sys(4)=x(4);
sys(5)=x(5);

sys(6)=x(6);
sys(7)=x(7);
sys(8)=x(8);
sys(9)=x(9);
sys(10)=x(10);