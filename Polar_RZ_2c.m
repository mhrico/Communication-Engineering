bits = [0 1 0 0 1];

bitrate = 1;

n = 1000;

T = length(bits)/bitrate;

N = n*length(bits);

dt = T/N;

t = 0:dt:T;

x = zeros(1,length(t));

%% Encoding
for i=1:length(bits)
  if bits(i)==1
    x((i-1)*n+1:(i-1)*n+n/2) = 1;
  else x((i-1)*n+1:(i-1)*n+n/2) = -1;
  end
end

plot(t, x, 'Linewidth', 3);
hold on;
plot(xlim, [0 0], '-r')
hold off;
ax = gca;
ax.XGrid = 'on';
ax.YGrid = 'off';
ax.GridAlpha = 0.5;

title('Polar RZ');

counter = 0;

%% Decoding
for i = 1:length(t)
  if t(i)>counter
    counter = counter + 1;
    if x(i)>0
      result(counter) = x(i);
    else
      result(counter) = 0;
    end
  end
end

disp(result);