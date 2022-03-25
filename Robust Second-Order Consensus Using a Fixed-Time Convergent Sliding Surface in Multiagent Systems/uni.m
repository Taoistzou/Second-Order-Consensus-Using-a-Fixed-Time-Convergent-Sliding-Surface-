function [sys,x0,str,ts] = spacemodel(t,x,u,flag)
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
sizes.NumContStates  = 5;
sizes.NumDiscStates  = 0;
sizes.NumOutputs     = 5;
sizes.NumInputs      = 10;
sizes.DirFeedthrough = 0;
sizes.NumSampleTimes = 1;
sys = simsizes(sizes);
x0  = [1 2 3 4 5];
str = [];
ts  = [0 0];
function sys=mdlDerivatives(t,x,u)
mi=0;
un1=x(1);
un2=x(2);
un3=x(3);
un4=x(4);
un5=x(5);
ki=31;
delta_1=u(1+5);
delta_2=u(2+5);
delta_3=u(3+5);
delta_4=u(4+5);
delta_5=u(5+5);
% sys(1)=-mi*un1-ki*sign(delta_1);
% sys(2)=-mi*un2-ki*sign(delta_2);
% sys(3)=-mi*un3-ki*sign(delta_3);
% sys(4)=-mi*un4-ki*sign(delta_4);
% sys(5)=-mi*un5-ki*sign(delta_5);

sys(1)=-mi*delta_1-ki*sign(delta_1);
sys(2)=-mi*delta_2-ki*sign(delta_2);
sys(3)=-mi*delta_3-ki*sign(delta_3);
sys(4)=-mi*delta_4-ki*sign(delta_4);
sys(5)=-mi*delta_5-ki*sign(delta_5);

function sys=mdlOutputs(t,x,u)

sys(1)=x(1);
sys(2)=x(2);
sys(3)=x(3);
sys(4)=x(4);
sys(5)=x(5);
