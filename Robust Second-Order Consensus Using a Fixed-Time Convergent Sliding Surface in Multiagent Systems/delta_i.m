function [sys,x0,str,ts] = delta_i(t,x,u,flag)
switch flag
case 0
    [sys,x0,str,ts]=mdlInitializeSizes;
case 3
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
sizes.NumInputs      = 20;
sizes.DirFeedthrough = 1;
sizes.NumSampleTimes = 0;
sys = simsizes(sizes);
x0  = [];
str = [];
ts  = [];


function sys=mdlOutputs(t,x,u)
aij=[0 1 0 0 0;
     1 0 1 0 0;
     0 1 0 1 1;
     0 0 1 0 0;
     0 0 1 0 0];

x1=u(1);
x2=u(2);
x3=u(3);
x4=u(4);
x5=u(5);

v1=u(1+5);
v2=u(2+5);
v3=u(3+5);
v4=u(4+5);
v5=u(5+5);

ddx1=u(1+10);
ddx2=u(2+10);
ddx3=u(3+10);
ddx4=u(4+10);
ddx5=u(5+10);



alpha1=0.7;alpha2=0.8235;beta1=1.2;beta2=1.0909;

delta1=ddx1-(aij(1,1)*(sig(x1-x1,alpha1))+aij(1,2)*(sig(x2-x1,alpha1))+aij(1,3)*(sig(x3-x1,alpha1))+aij(1,4)*(sig(x4-x1,alpha1))+aij(1,5)*(sig(x5-x1,alpha1)))-...
            (aij(1,1)*(sig(x1-x1,beta1))+aij(1,2)*(sig(x2-x1,beta1))+aij(1,3)*(sig(x3-x1,beta1))+aij(1,4)*(sig(x4-x1,beta1))+aij(1,5)*(sig(x5-x1,beta1)))-...
            (aij(1,1)*(sig(v1-v1,alpha2))+aij(1,2)*(sig(v2-v1,alpha2))+aij(1,3)*(sig(v3-v1,alpha2))+aij(1,4)*(sig(v4-v1,alpha2))+aij(1,5)*(sig(v5-v1,alpha2)))-...
            (aij(1,1)*(sig(v1-v1,beta2))+aij(1,2)*(sig(v2-v1,beta2))+aij(1,3)*(sig(v3-v1,beta2))+aij(1,4)*(sig(v4-v1,beta2))+aij(1,5)*(sig(v5-v1,beta2)));
        
delta2=ddx2-(aij(2,1)*(sig(x1-x2,alpha1))+aij(2,2)*(sig(x2-x2,alpha1))+aij(2,3)*(sig(x3-x2,alpha1))+aij(2,4)*(sig(x4-x2,alpha1))+aij(2,5)*(sig(x5-x2,alpha1)))-...
            (aij(2,1)*(sig(x1-x2,beta1))+aij(2,2)*(sig(x2-x2,beta1))+aij(2,3)*(sig(x3-x2,beta1))+aij(2,4)*(sig(x4-x2,beta1))+aij(2,5)*(sig(x5-x2,beta1)))-...
            (aij(2,1)*(sig(v1-v2,alpha2))+aij(2,2)*(sig(v2-v2,alpha2))+aij(2,3)*(sig(v3-v2,alpha2))+aij(2,4)*(sig(v4-v2,alpha2))+aij(2,5)*(sig(v5-v2,alpha2)))-...
            (aij(2,1)*(sig(v1-v2,beta2))+aij(2,2)*(sig(v2-v2,beta2))+aij(2,3)*(sig(v3-v2,beta2))+aij(2,4)*(sig(v4-v2,beta2))+aij(2,5)*(sig(v5-v2,beta2)));
        
delta3=ddx3-(aij(3,1)*(sig(x1-x3,alpha1))+aij(3,2)*(sig(x2-x3,alpha1))+aij(3,3)*(sig(x3-x3,alpha1))+aij(3,4)*(sig(x4-x3,alpha1))+aij(3,5)*(sig(x5-x3,alpha1)))-...
            (aij(3,1)*(sig(x1-x3,beta1))+aij(3,2)*(sig(x2-x3,beta1))+aij(3,3)*(sig(x3-x3,beta1))+aij(3,4)*(sig(x4-x3,beta1))+aij(3,5)*(sig(x5-x3,beta1)))-...
            (aij(3,1)*(sig(v1-v3,alpha2))+aij(3,2)*(sig(v2-v3,alpha2))+aij(3,3)*(sig(v3-v3,alpha2))+aij(3,4)*(sig(v4-v3,alpha2))+aij(3,5)*(sig(v5-v3,alpha2)))-...
            (aij(3,1)*(sig(v1-v3,beta2))+aij(3,2)*(sig(v2-v3,beta2))+aij(3,3)*(sig(v3-v3,beta2))+aij(3,4)*(sig(v4-v3,beta2))+aij(3,5)*(sig(v5-v3,beta2)));
        
delta4=ddx4-(aij(4,1)*(sig(x1-x4,alpha1))+aij(4,2)*(sig(x2-x4,alpha1))+aij(4,3)*(sig(x3-x4,alpha1))+aij(4,4)*(sig(x4-x4,alpha1))+aij(4,5)*(sig(x5-x4,alpha1)))-...
            (aij(4,1)*(sig(x1-x4,beta1))+aij(4,2)*(sig(x2-x4,beta1))+aij(4,3)*(sig(x3-x4,beta1))+aij(4,4)*(sig(x4-x4,beta1))+aij(4,5)*(sig(x5-x4,beta1)))-...
            (aij(4,1)*(sig(v1-v4,alpha2))+aij(4,2)*(sig(v2-v4,alpha2))+aij(4,3)*(sig(v3-v4,alpha2))+aij(4,4)*(sig(v4-v4,alpha2))+aij(4,5)*(sig(v5-v4,alpha2)))-...
            (aij(4,1)*(sig(v1-v4,beta2))+aij(4,2)*(sig(v2-v4,beta2))+aij(4,3)*(sig(v3-v4,beta2))+aij(4,4)*(sig(v4-v4,beta2))+aij(4,5)*(sig(v5-v4,beta2)));
        
delta5=ddx5-(aij(5,1)*(sig(x1-x5,alpha1))+aij(5,2)*(sig(x2-x5,alpha1))+aij(5,3)*(sig(x3-x5,alpha1))+aij(5,4)*(sig(x4-x5,alpha1))+aij(5,5)*(sig(x5-x5,alpha1)))-...
            (aij(5,1)*(sig(x1-x5,beta1))+aij(5,2)*(sig(x2-x5,beta1))+aij(5,3)*(sig(x3-x5,beta1))+aij(5,4)*(sig(x4-x5,beta1))+aij(5,5)*(sig(x5-x5,beta1)))-...
            (aij(5,1)*(sig(v1-v5,alpha2))+aij(5,2)*(sig(v2-v5,alpha2))+aij(5,3)*(sig(v3-v5,alpha2))+aij(5,4)*(sig(v4-v5,alpha2))+aij(5,5)*(sig(v5-v5,alpha2)))-...
            (aij(5,1)*(sig(v1-v5,beta2))+aij(5,2)*(sig(v2-v5,beta2))+aij(5,3)*(sig(v3-v5,beta2))+aij(5,4)*(sig(v4-v5,beta2))+aij(5,5)*(sig(v5-v5,beta2)));



sys(1)=delta1;
sys(2)=delta2;
sys(3)=delta3;
sys(4)=delta4;
sys(5)=delta5;



