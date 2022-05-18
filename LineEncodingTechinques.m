%% Unipolar NRZ
figure;
bits = flip(de2bi(105118));
n = length(bits);
x = [0];
y = [-1];

for i=1:n
    x=[x, i-1, i];
    if(bits(i)==0)
        y=[y, 0, 0];
    else
        y=[y, 1, 1];
    end
end

plot(x,y,'LineWidth',3),axis([0,n,-2,2]);
grid on;
title(['Unipolar NRZ: [' num2str(bits) ']']);
xlabel('Time axis');
ylabel('Amplitude');


%% Polar NRZ-L
figure;
bits = flip(de2bi(105118));
n = length(bits);
x = [0];
y = [-1];
for i=1:n
    x=[x i-1 i];
    if(bits(i)==0)
        y=[y, 1, 1];
    else
        y=[y, -1, -1];
    end
end

plot(x,y,'LineWidth',3),axis([0,n,-2,2]);
grid on;
title(['Polar NRZ-L: [' num2str(bits) ']']);
xlabel('Time axis');
ylabel('Amplitude');

%% Polar NRZ-I
figure;
bits = flip(de2bi(105118));
n = length(bits);
x = [0];
y = [-1];
a=1;
for i=1:n
    x=[x i-1 i];
    if(bits(i)==1)
        y=[y -a -a];
    else
        y=[y a a];
    end
    a=y(length(y));
end

plot(x,y,'LineWidth',3),axis([0,n,-2,2]);
grid on;
title(['Polar NRZ-I: [' num2str(bits) ']']);
xlabel('Time axis');
ylabel('Amplitude');

%% Polar RZ
figure;
bits = flip(de2bi(105118));
n = length(bits);
x = [0];
y = [-1];



for i=1:n
    x=[x i-1 i-1+0.5 i-1+0.5 i];
    if(bits(i)==0)
        y=[y -1 -1 0 0];
    else
        y=[y 1 1 0 0];
    end
end
y(1,1)=-1;
plot(x,y,'LineWidth',3),axis([0,n,-2,2]);
grid on;
title(['Polar RZ: [' num2str(bits) ']']);
xlabel('Time axis');
ylabel('Amplitude');


%% Manchester
figure;
bits = flip(de2bi(105118));
n = length(bits);
x = [0];
y = [-1];

for i=1:n
    x=[x i-1 i-1+0.5 i-1+0.5 i];
    if(bits(i)==0)
        y=[y 1 1 -1 -1];
    else
        y=[y -1 -1 1 1];
    end
end

plot(x,y,'LineWidth',3),axis([0,n,-2,2]);
grid on;
title(['Manchester: [' num2str(bits) ']']);
xlabel('Time axis');
ylabel('Amplitude');


%% Differential Manchester
figure;
bits = flip(de2bi(105118));
n = length(bits);
x = [0];
y = [-1];
a = 1;
for i=1:n
    x=[x, i-1, i-1+0.5, i-1+0.5, i];
    if(bits(i)==0)
        y=[y, -a, -a, a, a];
    else
        y=[y, a, a, -a, -a];
    end
    a=y(length(y));
end

plot(x,y,'LineWidth',3),axis([0,n,-2,2]);
grid on;
title(['Differential Manchester: [' num2str(bits) ']']);
xlabel('Time axis');
ylabel('Amplitude');

%% Bipolar AMI
figure;
bits = flip(de2bi(105118));
n = length(bits);
x = [0];
y = [1];
a=1;
for i=1:n
    x=[x, i-1, i];
    if(bits(i)== 1)
        y=[y, a, a];
        a=a*(-1);
    else
        y=[y, 0, 0];
    end
end

plot(x,y,'LineWidth',3),axis([0,n,-2,2]);
grid on;
title(['Bipolar AMI: [' num2str(bits) ']']);
xlabel('Time axis');
ylabel('Amplitude');

%% Bipolar Pseudoternary
figure;
bits = flip(de2bi(105118));
n = length(bits);
x = [0];
y = [1];
a=1;
for i=1:n
    x=[x, i-1, i];
    if(bits(i)== 0)
        y=[y, a, a];
        a=a*(-1);
    else
        y=[y, 0, 0];
    end
end

plot(x,y,'LineWidth',3),axis([0,n,-2,2]);
grid on;
title(['Bipolar Pseudoternary: [' num2str(bits) ']']);
xlabel('Time axis');
ylabel('Amplitude');
