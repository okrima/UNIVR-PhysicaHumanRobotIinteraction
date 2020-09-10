
%clear all

load_system("Master_Slave_Model");
stopTime = get_param('Master_Slave_Model','StopTime');
stopTime = str2double(stopTime);

Ts = 0.001;
% --- parameters ---

%% Prefilter
Fc = 1;

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
qe = 10; % environment position (rad)
Be = 5;
Ke = 10;

%% Numerical derivative
beta_s = 10;
Ts = 0.002;

%% Human PD
Kp_h = 1.2;
Kd_h = 0.5;
Fc_h = 5; % (Hz)

beta = 2*pi*Fc_h*Ts / (1+2*pi*Fc_h*Ts);

%% Human ARM
Jh = 0.02;
Bh = 2;
Kh = 25;
Kh_max = 100;

Fh_star = 1;   % N

%% Passivity controller gains for master robot
Kp_m = 0.01;
Kd_m = 0.005;

%% Passivity controller gains for slave robot
Kp_s = 1;
Kd_s = 0.5;

%% UPDATE PASSIVE OBSERVER
dt = 0.01;

%% TIME DELAY
delayCommM2S = 0;
delayCommS2M = 0;

