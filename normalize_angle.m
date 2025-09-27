function [normalized] =  normalize_angle(angle)
    if angle > 360
        normalized = angle-360;
    elseif angle < 0
        normalized = angle + 360;
    else
        normalized = angle;
    end
end