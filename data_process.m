%% Race Data Process
%%
clear;clc;close all
%%
load dataset_2.mat;
%% 
% 0.01s sample time
time = 0.01*(1:length(Gear));

% figure(1)
% plot(time, aSteering)
% hold on
% plot(time,rPedal)
% plot(time,pBrakeF)
% 
% legend('SWA[deg]','Acc Pedal[%]','Brake[%]')

%% Overall Pedal System Req
Pedal = rPedal  + -1* pBrakeF;

figure(2)
plot(time, aSteering,'--')
hold on
plot(time, Pedal)
plot(time,GPSSpeed)
legend('SWA[deg]','Overall Pedal[%]','Velocity[Km/h]')

%% GPS Position
figure(3)
plot(GPSLatitude, GPSLongitude)

