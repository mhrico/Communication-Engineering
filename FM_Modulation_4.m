amp_carrier = 8
amp_message = 4
frequency_carrier = 100;
frequency_message = 1;
m = amp_message / amp_carrier; % Modulation index, best if 1/2
T = 4;
t = 0:0.001:T;

message = amp_message.*sin(2*pi*frequency_message*t);
subplot(3, 1, 1);
plot(t, message);
title('Message Signal');

carrier = amp_carrier.*sin(2*pi*frequency_carrier*t);
subplot(3, 1, 2);
plot(t, carrier);
title('Carrier Signal');

modulated = amp_carrier.*cos(2*pi*frequency_carrier*t+(m.*sin(2*pi*frequency_message*t)));
subplot(3, 1, 3);
plot(t, modulated, 'r');
title('Modulated Signal');