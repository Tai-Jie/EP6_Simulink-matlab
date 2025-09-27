function [filtered] = lpf(data)
    Ts = 1/11E3;
    Tf = 0.0008;
	alpha = Tf/(Tf + Ts);
    len = length(data);
    filtered = zeros(length(data),1);
    filtered(1) = data(1);
    for n = 2:len
        filtered(n) = alpha*filtered(n-1) + (1.0 - alpha)*data(n);
    end
end