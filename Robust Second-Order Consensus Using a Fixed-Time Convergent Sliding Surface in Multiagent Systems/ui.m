function [sys,x0,str,ts] = ui(t,x,u,flag)
switch flag,
case 0,
    [sys,x0,str,ts]=mdlInitializeSizes;
case 3,
    sys=mdlOutputs(t,x,u);
case {1,2,4,9}
    sys=[];
otherwise
    error(['Unhandled flag = ',num2str(flag)]);
end
function [sys,x0,str,ts]=mdlInitializeSizes
sizes = simsizes;
sizes.NumContStates  = 0;
sizes.NumDiscStates  = 0;
sizes.NumOutputs     = 5;
sizes.NumInputs      = 10;
sizes.DirFeedthrough = 1;
sizes.NumSampleTimes = 0;
sys = simsizes(sizes);
x0  = [];
str = [];
ts  = [];


function sys=mdlOutputs(t,x,u)

u1=u(1)+u(1+5);
u2=u(2)+u(2+5);
u3=u(3)+u(3+5);
u4=u(4)+u(4+5);
u5=u(5)+u(5+5);

sys(1)=u1;
sys(2)=u2;
sys(3)=u3;
sys(4)=u4;
sys(5)=u5;
