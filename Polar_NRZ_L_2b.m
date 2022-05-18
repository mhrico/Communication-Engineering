bits = [0 1 0 0 1 1 1 0];
neg = -3;
pos = 3;
bitrate = 1;

n = 1000;

T = length(bits) / bitrate;

N = n * length(bits);

dT = T / N;

t = 0:dt:T;

x = zeros(1, length(t));

%% Encoding
for i = 1:length(bits)
    if bits(i) == 1
        x((i-1)*n +1 : i * n) = neg;
    else
        x((i-1)*n +1 : i * n) = pos;
    end
end

plot(t, x, 'Linewidth', 3, 'color', 'r');
title('Polar NRZ-L Encoding');
grid on;

%% Decoding
counter = 0;
for i = 1:length(t)
    if(t(i) > counter)
        counter = counter + 1;
        if x(i) == pos
            result(counter) = 0;
        else
            result(counter) = 1;
        end
    end
end

disp(result);
