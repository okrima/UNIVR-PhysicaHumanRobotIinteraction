
clear all

load_system("Master_Slave_Model");
stopTime = get_param('Master_Slave_Model','StopTime');
stopTime = str2double(stopTime);

% --- parameters ---

%% Prefilter
Fc = 20;
Ts = 0.001;
beta = 2*pi*Fc*Ts / (1+2*pi*Fc*Ts);

%% Master/Slave Motor constants
Kt2c_m = 1.182; % torque -> current
Kt2c_s = 1.182; % torque -> current
maxCurrent_m = 4.5; % ampere
maxCurrent_s = 4.5; % ampere
Kc2v_m = 2; % current -> voltage
Kc2v_s = 2; % current -> voltage
k_m = 19.34;
k_s = 19.34;
tau_m = 1.217;
tau_s = 1.217;

%% Environment PD
lArm_m = 0.1; % m
lArm_s = 0.1; % m
qe = 2; % environment position (rad)
Be = 5;
Ke = 10;

%% Numerical derivative
%beta_s = 20;
Variance = 0.0000001;

%% Human PD
Kp_h = 1.2;
Kd_h = 0.5;

Fc_h = 1; % (Hz)

%% Human ARM
Jh = 0;
%Bh = 0.5;
Kh = 2;    
Bh = 2*0.7*sqrt(Kh);
Kh_max = 50;

PosRef = 1;     %rad

%% Controller gains for master robot
Kp_m = 1;
Kd_m = 1.5;

%% Controller gains for slave robot
Kp_s = 1;
Kd_s = 1.5;

%% UPDATE PASSIVE OBSERVER
dt = 0.001;

%% TIME DELAY
delayCommM2S = 0;
delayCommS2M = 0;

VideoDelay = 0;

%Kalman Modeling
A = [1 Ts;0 1];
C = [1 0];
