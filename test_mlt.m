bits = [1 1 0 1 1 0 1 1];
mlt = zeros(1, length(bits));

if bits(1) == 0
    mlt(1) = 0;
    sign = -1;
end
if bits(1) == 1
    mlt(1) = 1;
    sign = 1;
end



for i = 2:length(bits)
    if bits(i) == 0
        mlt(i) = mlt(i-1);
    end
    if bits(i) == 1 && mlt(i-1) == 0
        if sign == 1
            mlt(i) = -1;
            sign = -sign;
        elseif sign == -1
            mlt(i) = 1;
            sign = -sign;
        end
     elseif bits(i) == 1 && mlt(i-1) ~= 0
        mlt(i) = 0;
    end
end