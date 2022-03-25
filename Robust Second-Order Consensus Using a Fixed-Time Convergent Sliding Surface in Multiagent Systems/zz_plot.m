close all;

% figure(1)%λ�ù���
% plot(t,y7(:,1),t,y5(:,[1 2 3 4 5]))
% legend('$x_{0,1}$','${\hat{x}_{0,1}}^1$','${\hat{x}_{0,1}}^2$','${\hat{x}_{0,1}}^3$','${\hat{x}_{0,1}}^4$','${\hat{x}_{0,1}}^5$','interpreter','latex','linewidth',1.5,'fontsize',15);
% 
% figure(2)%�ٶȹ���
% plot(t,y7(:,2),t,y5(:,[1 2 3 4 5]+5))
% legend('$v_{0,1}$','${\hat{v}_{0,1}}^1$','${\hat{v}_{0,1}}^2$','${\hat{v}_{0,1}}^3$','${\hat{v}_{0,1}}^4$','${\hat{v}_{0,1}}^5$','interpreter','latex','linewidth',1.5,'fontsize',15);
% 
% figure(3)%���ٶȹ���
% plot(t,y7(:,3),t,y5(:,[1 2 3 4 5]+5+5))
% legend('$a_{0,1}$','${\hat{a}_{0,1}}^1$','${\hat{a}_{0,1}}^2$','${\hat{a}_{0,1}}^3$','${\hat{a}_{0,1}}^4$','${\hat{a}_{0,1}}^5$','interpreter','latex','linewidth',1.5,'fontsize',15);





%%%λ�ø������
figure(1)
% subplot(1,2,1)
plot(t,y(:,[1 2 3 4 5]),'lineWidth',1.5)
legend('$x_1$','$x_2$','$x_3$','$x_4$','$x_5$','interpreter','latex','linewidth',1.5,'fontsize',15);
xlabel('ʱ��/s')
ylabel('�������λ��״̬�켣')

% title({'������λ�ó�ʼֵ x(0)=(1,2,3,4,5)'},'FontSize',15);% title���У����е������÷ֺŸ��������ô�������������
% title({'������λ�ó�ʼֵ x(0)=(10,20,30,40,50)'},'FontSize',15);% title���У����е������÷ֺŸ��������ô�������������
% set(gca,'FontSize',15);





figure(2)
%%%�ٶȸ������
% subplot(1,2,2)
plot(t,y(:,[1 2 3 4 5]+5),'LineWidth',1.5)
legend('$v_1$','$v_2$','$v_3$','$v_4$','$v_5$','interpreter','latex','linewidth',1.5,'fontsize',15);
xlabel('ʱ��/s')
ylabel('��������ٶ�״̬�켣')


% title({'�������ٶȳ�ʼֵ v(0)=(1,2,3,4,5)'},'FontSize',15);% title���У����е������÷ֺŸ��������ô�������������
% set(gca,'FontSize',15);




figure(3)
plot(t,ui)
% 
% 
% figure(4)
% plot(t,delta_i)









% figure(4); %λ�ù������
% plot(t,y5(:,[1 2 3 4 5])-y7(:,1))
% figure(2);
% plot(t,y5(:,[1 2 3 4 5]+5)-y7(:,2))
% figure(3);
% plot(t,y5(:,[1 2 3 4 5]+5+5)-y7(:,3))
% % plot(t,y(:,1),'k',t,y(:,2),'b',t,y(:,3),'r:',t,y(:,4),'g--','linewidth',1.5);
% plot(t,y5(:,[1 2 3 4 5]))
% plot(t,y1(:,1),t,y2(:,[1 2 3 4 5 6]))
% legend('$x_0$','$\theta_1$','$\theta_2$','$\theta_3$','$\theta_4$','$\theta_5$','$\theta_6$','interpreter','latex','linewidth',1.5,'fontsize',15);
% xlabel('time(s)');ylabel('position states of leader and its estimation of position states');

% figure(2)
% plot(t,y1(:,2),t,y2(:,[7 8 9 10 11 12]),'linewidth',1.5)
% xlabel('time(s)');ylabel('velocity states of leader and its estimation of velocity states');
% legend('$v_0$','$\omega _1$','$\omega_2$','$\omega_3$','$\omega _4$','$\omega_5$','$\omega_6$','interpreter','latex','linewidth',1.5,'fontsize',15);
% 
% figure(3);
% plot(t,y2(:,[1 2 3 4 5 6])-y1(:,1))%λ�ù��Ƹ������
% xlabel('time(s)');
% ylabel('the position estimation error $\epsilon_k$','interpreter','latex','fontsize',15);
% legend('$\epsilon_{p1}$','$\epsilon_{p2}$','$\epsilon_{p3}$','$\epsilon_{p4}$','interpreter','latex','linewidth',1.5,'fontsize',15);
% 
% 
%  
% figure(4);
% plot(t,y2(:,[7 8 9 10 11 12])-y1(:,2))%�ٶȹ��Ƹ������
% xlabel('time(s)');
% ylabel('the velocity estimation error $\epsilon_k$','interpreter','latex','fontsize',15);
% legend('$\epsilon_{v1}$','$\epsilon_{v2}$','$\epsilon_{v3}$','$\epsilon_{v4}$','interpreter','latex','linewidth',1.5,'fontsize',15);
% 
% 
% figure(5)
% plot(t,y4(:,[1 2 3 4]))%һ��������λ�����
% xlabel('time(s)');
% ylabel('the position estimation error of first order agents $\epsilon_k$','interpreter','latex','fontsize',15);
% legend('$\xi_{p1}$','$\xi_{p2}$','$\xi_{p3}$','$\xi_{p4}$','interpreter','latex','linewidth',1.5,'fontsize',15);
% 
% 
% figure(6)%����������λ�����
% plot(t,y3(:,[1 2]))
% xlabel('time(s)');
% ylabel('the position estimation error of second order agents $\epsilon_k$','interpreter','latex','fontsize',15);
% legend('$\zeta_{p1}$','$\zeta_{p2}$','interpreter','latex','linewidth',1.5,'fontsize',15);


% figure(7)
% plot(t,y1(:,2),t,y(:,[5 6]))
% legend('v0','v5','v6');
% 
% figure(8)
% plot(t,ut1)
% 
% figure(9)
% plot(t,ut2)









