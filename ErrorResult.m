clear
clc
close all
%% Defaults for this blog post
width = 8;     % Width in inches
height = 4;    % Height in inches
alw = 0.75;    % AxesLineWidth
fsz =16 ;      % Fontsize
lw = 1;      % LineWidth
msz = 8;       % MarkerSize

%%
load('MPCerror')
MPCerror=error;
timeMPC=time;
time=[];
error=[];
load('PIDerror')
PIDerror=error;
timePID=time;
time=[];
error=[];
%%
figure(1)
pos = get(gcf, 'Position');
set(gcf, 'Position', [pos(1) pos(2) width*100, height*400]); %<- Set size
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
subplot(7,1,1)
plot(timeMPC,MPCerror(:,1),'linewidth',2)
hold on
plot(timePID,PIDerror(:,1),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('e_1 - deg')
legend('MPC','PID')
title('Error of Controllers')
subplot(7,1,2)
plot(timeMPC,MPCerror(:,2),'linewidth',2)
hold on
plot(timePID,PIDerror(:,2),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('e_2 - deg')
% legend('MPC','PID')
subplot(7,1,3)
plot(timeMPC,MPCerror(:,3),'linewidth',2)
hold on
plot(timePID,PIDerror(:,3),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('e_3 - deg')
% legend('MPC','PID')
subplot(7,1,4)
plot(timeMPC,MPCerror(:,4),'linewidth',2)
hold on
plot(timePID,PIDerror(:,4),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('e_4 - deg')
% legend('MPC','PID')
subplot(7,1,5)
plot(timeMPC,MPCerror(:,5),'linewidth',2)
hold on
plot(timePID,PIDerror(:,5),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('e_5 - deg')
% legend('MPC','PID')
subplot(7,1,6)
plot(timeMPC,MPCerror(:,6),'linewidth',2)
hold on
plot(timePID,PIDerror(:,6),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('e_6 - deg')
% legend('MPC','PID')
subplot(7,1,7)
plot(timeMPC,MPCerror(:,7),'linewidth',2)
hold on
plot(timePID,PIDerror(:,7),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('e_7 - deg')
% legend('MPC','PID')

%% mse ise
MSE_mpc=[mse(MPCerror(:,1))
    mse(MPCerror(:,2))
    mse(MPCerror(:,3))
    mse(MPCerror(:,4))
    mse(MPCerror(:,5))
    mse(MPCerror(:,6))
    mse(MPCerror(:,7))];
MSE_pid=[mse(PIDerror(:,1))
    mse(PIDerror(:,2))
    mse(PIDerror(:,3))
    mse(PIDerror(:,4))
    mse(PIDerror(:,5))
    mse(PIDerror(:,6))
    mse(PIDerror(:,7))];
%% ISE
ISE_mpc=[abs(sum(MPCerror(:,1)))
    abs(sum(MPCerror(:,2)))
    abs(sum(MPCerror(:,3)))
    abs(sum(MPCerror(:,4)))
    abs(sum(MPCerror(:,5)))
    abs(sum(MPCerror(:,6)))
    abs(sum(MPCerror(:,7)))];
ISE_pid=[abs(sum(PIDerror(:,1)))
    abs(sum(PIDerror(:,2)))
    abs(sum(PIDerror(:,3)))
    abs(sum(PIDerror(:,4)))
    abs(sum(PIDerror(:,5)))
    abs(sum(PIDerror(:,6)))
    abs(sum(PIDerror(:,7)))];
%%
%%
figure
subplot(2,2,1)
    bar(MSE_mpc)
legend('MPC')
grid minor  
 xlabel('Links')
 ylabel('MSE')
subplot(2,2,2)
bar(MSE_pid)
grid minor
legend('Ref [65]')
 xlabel('Links')
 ylabel('MSE')
subplot(2,2,3)
bar(ISE_pid)
legend('MPC')
grid minor
 xlabel('Links')
 ylabel('ISE')
subplot(2,2,4)
bar(ISE_pid)
legend('Ref [65]')
 grid minor
 xlabel('Links')
 ylabel('ISE')