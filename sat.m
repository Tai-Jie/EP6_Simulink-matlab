function y=sat(x, low_lim, up_lim)
% sat is the saturation function with unit limits and unit slope.
if x>up_lim
    y=up_lim;
elseif x<low_lim
    y=low_lim;
else 
    y=x;
end
