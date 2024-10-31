% Set up the basic conditions
clc;                     % clear screen
clear;                   % clear all the varibles
close all;               % Close all the open figures
bmax = 1;                % Normalize bmax to 1
freq = 50;               % Frequency in Hz
T=1/freq;                % Time Period in aec
w = 2*pi*freq;           % angluar velocity (rad/s)
n=10;                     % Number of cycles to be plotted
% First, generate the three component magnetic fields
t = 0:T/120:n*T;                                           % Time for five cycle of selected frequency
Baa1 = sin(w*t) .* (cos(0) + 1i*sin(0));                     % Phase A magnetic field along its axis aa'
Bbb1 = sin(w*t-pi/3) .* (cos(pi/3) + 1i*sin(pi/3));    % Phase B magnetic field along its axis bb'
Bcc1 = sin(w*t-2*pi/3) .* (cos(2*pi/3) + 1i*sin(2*pi/3));
Baa2 = sin(w*t-pi) .* (cos(pi) + 1i*sin(pi));
Bbb2 = sin(w*t-4*pi/3) .* (cos(4*pi/3) + 1i*sin(4*pi/3));
Bcc2 = sin(w*t-5*pi/3) .* (cos(5*pi/3) + 1i*sin(5*pi/3));
% Phase C magnetic field along its axis cc'
% Calculate Bnet
Bnet = Baa1+Bbb1+Bcc1+Baa2+Bbb2+Bcc2;                                     % Net Magnetic field
% Calculate a circle representing the expected maximum value of Bnet
circle = 3 * (cos(w*t) + 1i*sin(w*t));
% Plot the reference circle
figure(1);
plot(circle,'k','LineWidth',2.0);
hold on;
% Plot the reference vectors for the B-field components
Baa1_ref = 1.5 .* (cos(0) + 1i*sin(0));
Bbb1_ref = 1.5 .* (cos(pi/3) + 1i*sin(pi/3));
Bcc1_ref = 1.5 .* (cos(2*pi/3) + 1i*sin(2*pi/3));
Baa2_ref = 1.5 .* (cos(pi) + 1i*sin(pi));
Bbb2_ref = 1.5 .* (cos(4*pi/3) + 1i*sin(4*pi/3));
Bcc2_ref = 1.5 .* (cos(5*pi/3) + 1i*sin(5*pi/3));
line('XData',[0 real(Baa1_ref)], ...
     'YData',[0 imag(Baa1_ref)], ...
     'Color','k','LineStyle',':','EraseMode','xor');
line('XData',[0 real(Bbb1_ref)], ...
     'YData',[0 imag(Bbb1_ref)], ...
     'Color','b','LineStyle',':','EraseMode','xor');
line('XData',[0 real(Bcc1_ref)], ...
     'YData',[0 imag(Bcc1_ref)], ...
     'Color','m','LineStyle',':','EraseMode','xor');
 line('XData',[0 real(Baa2_ref)], ...
     'YData',[0 imag(Baa2_ref)], ...
     'Color','r','LineStyle',':','EraseMode','xor');
 line('XData',[0 real(Bbb2_ref)], ...
     'YData',[0 imag(Bbb2_ref)], ...
     'Color','g','LineStyle',':','EraseMode','xor');
 line('XData',[0 real(Bcc2_ref)], ...
     'YData',[0 imag(Bcc2_ref)], ...
     'Color','c','LineStyle',':','EraseMode','xor');
% Add magnetic field annotations
text (1.6 * cos(0),             1.6 * sin(0),            '\bfB_{aa}');
text (1.6 * cos(2*pi/3)  - 0.2, 1.6 * sin(2*pi/3) + 0.1, '\bfB_{bb}');
text (1.6 * cos(-2*pi/3) - 0.2, 1.6 * sin(-2*pi/3),      '\bfB_{cc}');
% Plot the initial positions of the magnetic vector lines.
% Note that Baa is black, Bbb is blue, Bcc is magneta, and Bnet is red.
ii = 1;
h1=line('XData',[0 real(Baa1(ii))], ...
        'YData',[0 imag(Baa1(ii))], ...
        'Color','k','EraseMode','xor', ...
        'Linewidth',4.0);
hold on;
h2=line('XData',[0 real(Bbb1(ii))], ...
        'YData',[0 imag(Bbb1(ii))], ...
        'Color','b','EraseMode','xor', ...
        'Linewidth',4.0);
h3=line('XData',[0 real(Bcc1(ii))], ...
        'YData',[0 imag(Bcc1(ii))], ...
        'Color','m','EraseMode','xor', ...
        'Linewidth',4.0);
h4=line('XData',[0 real(Baa2(ii))], ...
        'YData',[0 imag(Baa2(ii))], ...
        'Color','r','EraseMode','xor', ...
        'Linewidth',2.0);
h5=line('XData',[0 real(Bbb2(ii))], ...
        'YData',[0 imag(Bbb2(ii))], ...
        'Color','g','EraseMode','xor', ...
        'Linewidth',2.0);
h6=line('XData',[0 real(Bcc2(ii))], ...
        'YData',[0 imag(Bcc2(ii))], ...
        'Color','c','EraseMode','xor', ...
        'Linewidth',2.0);
h7=line('XData',[0 real(Bnet(ii))], ...
        'YData',[0 imag(Bnet(ii))], ...
        'Color','y','EraseMode','xor', ...
        'Linewidth',3.0);
   
% Labels and annotations
title ('\bfThe Rotating Magnetic Field');
xlabel('\bfFlux Density (T)');
ylabel('\bfFlux Density (T)');
axis square;
axis([-4 4 -4 4]);
% Now update the lines as a function of time.
for ii = 3:length(t)
   set(h1,'XData',[0 real(Baa1(ii))]);
   set(h1,'YData',[0 imag(Baa1(ii))]);
   set(h2,'XData',[0 real(Bbb1(ii))]);
   set(h2,'YData',[0 imag(Bbb1(ii))]);
   set(h3,'XData',[0 real(Bcc1(ii))]);
   set(h3,'YData',[0 imag(Bcc1(ii))]);
   set(h4,'XData',[0 real(Baa2(ii))]);
   set(h4,'YData',[0 imag(Baa2(ii))]);
   set(h5,'XData',[0 real(Bbb2(ii))]);
   set(h5,'YData',[0 imag(Bbb2(ii))]);
   set(h6,'XData',[0 real(Bcc2(ii))]);
   set(h6,'YData',[0 imag(Bcc2(ii))]);
   set(h7,'XData',[0 real(Bnet(ii))]);
   set(h7,'YData',[0 imag(Bnet(ii))]);
   drawnow;
end
hold off;
figure(2);
title ('\bfMagnetic Fields in time Domain');
ylabel('\bfFlux Density (T)');
xlabel('\bfTime(sec)');
axis([0 n*T -4 4]);
hold on;
grid on;
plot(t,Baa1,'k','LineWidth',4);
plot(t,Bbb1,'b','LineWidth',4);
plot(t,Bcc1,'m','LineWidth',4);
plot(t,Baa2,'r','LineWidth',1);
plot(t,Bbb2,'g','LineWidth',1);
plot(t,Bcc2,'c','LineWidth',1);
plot(t,Bnet,'y','LineWidth',3);
legend('Baa1','Bbb1','Bcc1','Baa2','Bbb2','Bcc2','Bnet')
clc;