amp_carrier = 1
amp_message = 1
frequency_carrier = 5 
frequency_message = 4
T = 4
t = 0:0.001:T;

message = amp_message.*sin(2*pi*frequency_message*t);
subplot(3, 1, 1);
plot(t, message);
title('Message Signal');

carrier = amp_carrier.*sin(2*pi*frequency_carrier*t);
subplot(3, 1, 2);
plot(t, carrier);
title('Carrier Signal');

modulated = amp_carrier.*sin(2*pi*frequency_carrier*t+((amp_message/amp_carrier).*(2*pi*frequency_message*t)));
subplot(3, 1, 3);
plot(t, modulated, 'r');
title('Modulated Signal');