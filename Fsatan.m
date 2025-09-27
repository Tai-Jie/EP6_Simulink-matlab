function [r] = Fsatan(x, y)
    abs_y = abs(y);
    abs_x = abs(x);
    % inject FLT_MIN in denominator to avoid division by zero
    a = min(abs_x, abs_y) ./ max(abs_x, abs_y);
    % s := a * a
    s = a .* a;
    % r := ((-0.0464964749 * s + 0.15931422) * s - 0.327622764) * s * a + a
    r = ((-0.0464964749 .* s + 0.15931422) .* s - 0.327622764) .* s .* a + a;
    % if |y| > |x| then r := 1.57079637 - r
    if (abs_y > abs_x) 
        r = 1.57079637 - r;
    end
    % if x < 0 then r := 3.14159274 - r
    if (x < 0.0) 
        r = 3.14159274 - r;
    end
    % if y < 0 then r := -r
    if (y < 0.0) 
        r = -r;
    end
    r = mod(r, 2*pi);
    if r < 0
        r = r + 2*pi;
    end
    r = r/2/pi*360;
end