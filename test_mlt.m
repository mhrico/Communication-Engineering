bits = [0 1 0 1 1 0 1 1];
mlt = zeros(1, length(bits));

if bits(1) == 0
    mlt(1) = 0;
end
if bits(1) == 1
    mlt(1) = 1;
end

sign = -1;

for i = 2:length(bits)
    if bits(i) == 0
        mlt(i) = mlt(i-1);
    end
    if mlt(i-1) == 0 && bits(i) == 1
        if sign == 1
            mlt(i) = -1;
            sign = -sign;
        elseif sign == -1
            mlt(i) = 1;
            sign = -sign;
        end
    end
end