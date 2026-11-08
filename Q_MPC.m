clear;
clc;
close all
global params AngDisp AngVel teta tetadot tetaControl tetadotControl...
    error effort torque time
%% Constants
m1=0.2;m2=3;m3=9.149;m4=36.044;m5=9.149;m6=3;m7=0.2;
L1=0.1;L2=0.4;L3=0.4;L4=.625;L5=.4;L6=.4;L7=.1;
L1c=0.03;L2c=.137;L3c=.163;L4c=.2;L5c=.163;L6c=0.137;L7c=0.03;
I1=.1;I2=.149;I3=.331;I4=5.527;I5=.331;I6=.149;I7=.1;
h=10;k=10;g=10;
%%
params=[m1,m2,m3,m4,m5,m6,m7,L1,L2,L3,L4,L5,L6,L7,L1c,L2c,L3c,L4c,L5c,L6c,L7c,I1,I2,I3,I4,I5,I6,I7,h,k,g];
%%
AngDisp=[0,pi/2,pi/2,pi/2,pi/2,pi/2,0];
AngVel=[0,0,0,0,0,0,0];
%% Teta
sim('mainMPC')
