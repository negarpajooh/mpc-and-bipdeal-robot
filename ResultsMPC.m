% clc;
% clear;
close all
global params AngDisp AngVel teta tetadot tetaControl tetadotControl...
    error effort torque time noise
%% Defaults for this blog post
width = 8;     % Width in inches
height = 4;    % Height in inches
alw = 0.75;    % AxesLineWidth
fsz =16 ;      % Fontsize
lw = 1;      % LineWidth
msz = 8;       % MarkerSize
%% 
figure(1)
subplot(2,1,1)
plot(time,teta(:,1),'b','linewidth',1)
grid minor
xlabel('Time - sec')
ylabel('\theta_1 - deg')
title('Open loop')
subplot(2,1,2)
plot(time,tetaControl(:,1),'r','linewidth',1)
grid minor
xlabel('Time - sec')
ylabel('\theta_1 - deg')
title('Close loop')
%%
figure(2)
subplot(2,1,1)
plot(time,teta(:,2),'b','linewidth',1)
grid minor
xlabel('Time - sec')
ylabel('\theta_2 - deg')
title('Open loop')
subplot(2,1,2)
plot(time,tetaControl(:,2),'r','linewidth',1)
grid minor
xlabel('Time - sec')
ylabel('\theta_2 - deg')
title('Close loop')
%%
figure(3)
subplot(2,1,1)
plot(time,teta(:,3),'b','linewidth',1)
grid minor
xlabel('Time - sec')
ylabel('\theta_3 - deg')
title('Open loop')
subplot(2,1,2)
plot(time,tetaControl(:,3),'r','linewidth',1)
grid minor
xlabel('Time - sec')
ylabel('\theta_3 - deg')
title('Close loop')
%%
figure(4)
subplot(2,1,1)
plot(time,teta(:,4),'b','linewidth',1)
grid minor
xlabel('Time - sec')
ylabel('\theta_4 - deg')
title('Open loop')
subplot(2,1,2)
plot(time,tetaControl(:,4),'r','linewidth',1)
grid minor
xlabel('Time - sec')
ylabel('\theta_4 - deg')
title('Close loop')
%%
figure(5)
subplot(2,1,1)
plot(time,teta(:,5),'b','linewidth',1)
grid minor
xlabel('Time - sec')
ylabel('\theta_5 - deg')
title('Open loop')
subplot(2,1,2)
plot(time,tetaControl(:,5),'r','linewidth',1)
grid minor
xlabel('Time - sec')
ylabel('\theta_5 - deg')
title('Close loop')
%%
figure(6)
subplot(2,1,1)
plot(time,teta(:,6),'b','linewidth',1)
grid minor
xlabel('Time - sec')
ylabel('\theta_6 - deg')
title('Open loop')
subplot(2,1,2)
plot(time,tetaControl(:,6),'r','linewidth',1)
grid minor
xlabel('Time - sec')
ylabel('\theta_6 - deg')
title('Close loop')
%%
figure(7)
subplot(2,1,1)
plot(time,teta(:,7),'b','linewidth',1)
grid minor
xlabel('Time - sec')
ylabel('\theta_7 - deg')
title('Open loop')
subplot(2,1,2)
plot(time,tetaControl(:,7),'r','linewidth',1)
grid minor
xlabel('Time - sec')
ylabel('\theta_7 - deg')
title('Close loop')
%%
figure(8)
pos = get(gcf, 'Position');
set(gcf, 'Position', [pos(1) pos(2) width*100, height*400]); %<- Set size
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
subplot(7,1,1)
plot(time(1:size(effort(:,1),1)),effort(:,1),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('u_1 - N.m')
subplot(7,1,2)
plot(time(1:size(effort(:,2),1)),effort(:,2),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('u_2 - N.m')
subplot(7,1,3)
plot(time(1:size(effort(:,3),1)),effort(:,3),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('u_3 - N.m')
subplot(7,1,4)
plot(time(1:size(effort(:,4),1)),effort(:,4),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('u_4 - N.m')
subplot(7,1,5)
plot(time(1:size(effort(:,5),1)),effort(:,5),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('u_5 - N.m')
subplot(7,1,6)
plot(time(1:size(effort(:,6),1)),effort(:,6),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('u_6 - N.m')
subplot(7,1,7)
plot(time(1:size(effort(:,7),1)),effort(:,7),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('u_7 - N.m')
%%
figure(9)
pos = get(gcf, 'Position');
set(gcf, 'Position', [pos(1) pos(2) width*100, height*400]); %<- Set size
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
subplot(7,1,1)
plot(time,error(:,1),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('e_1 - deg')
subplot(7,1,2)
plot(time,error(:,2),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('e_2 - deg')
subplot(7,1,3)
plot(time,error(:,3),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('e_3 - deg')
subplot(7,1,4)
plot(time,error(:,4),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('e_4 - deg')
subplot(7,1,5)
plot(time,error(:,5),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('e_5 - deg')
subplot(7,1,6)
plot(time,error(:,6),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('e_6 - deg')
subplot(7,1,7)
plot(time,error(:,7),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('e_7 - deg')
%%
figure(10)
pos = get(gcf, 'Position');
set(gcf, 'Position', [pos(1) pos(2) width*100, height*450]); %<- Set size
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
subplot(7,1,1)
plot(time,torque(:,1),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('\tau_1 - N.m')
subplot(7,1,2)
plot(time,torque(:,2),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('\tau_2 - N.m')
subplot(7,1,3)
plot(time,torque(:,3),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('\tau_3 - N.m')
subplot(7,1,4)
plot(time,torque(:,4),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('\tau_4 - N.m')
subplot(7,1,5)
plot(time,torque(:,5),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('\tau_5 - N.m')
subplot(7,1,6)
plot(time,torque(:,6),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('\tau_6 - N.m')
subplot(7,1,7)
plot(time,torque(:,7),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('\tau_7 - N.m')
%%
figure(11)
pos = get(gcf, 'Position');
set(gcf, 'Position', [pos(1) pos(2) width*100, height*450]); %<- Set size
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
subplot(7,1,1)
plot(time,noise(:,1),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('Amp - N.m')
subplot(7,1,2)
plot(time,noise(:,2),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('Amp - N.m')
subplot(7,1,3)
plot(time,noise(:,3),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('Amp - N.m')
subplot(7,1,4)
plot(time,noise(:,4),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('Amp - N.m')
subplot(7,1,5)
plot(time,noise(:,5),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('Amp - N.m')
subplot(7,1,6)
plot(time,noise(:,6),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('Amp - N.m')
subplot(7,1,7)
plot(time,noise(:,7),'linewidth',2)
grid minor
xlabel('Time - sec')
ylabel('Amp - N.m')
title('External Disturbance')
%%
MPCerror=error;
save('MPCerror')