
clear all

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
qe = 1; % environment position (rad)
Be = 5;
Ke = 10;

%% Numerical derivative
beta_s = 10;
Ts = 0.002;

%% Human PD
Kp_h = 1.2;
Kd_h = 0.5;
Fc_h = 5; % (Hz)

%% Human ARM
Jh = 0.02;
Bh = 0.02;

%% Passivity controller gains for master robot
Kp_m = 0.01;
Kd_m = 0.005;

%% Passivity controller gains for slave robot
Kp_s = 1;
Kd_s = 0.5;

%% Impedance Controller
Bs = 1;
Ks = 1;

%% UPDATE PASSIVE OBSERVER
dt = 0.01;

%% TELE-IMPEDANCE PARAMETERES
damping_ratio = 0.7;
K_h_hat_lin = 400;
K_h_hat_ang = K_h_hat_lin/80;
B_h_hat = 2*damping_ratio*sqrt(K_h_hat_ang);

%% TIME DELAY
delayCommM2S = 1;
delayCommS2M = 1;

