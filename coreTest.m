sa = sind(MOTRR20250803152712.Angledeg);
ca = cosd(MOTRR20250803152712.Angledeg);
Ualpha =  ca .* MOTRR20250803152712.Vd - sa .* MOTRR20250803152712.Vq;
Ubeta =  sa .* MOTRR20250803152712.Vd + ca .* MOTRR20250803152712.Vq;
Ua = Ualpha;
Ub = -0.5 .* Ualpha + 0.86602540378 .* Ubeta;
Uc = -0.5 .* Ualpha - 0.86602540378 .* Ubeta;
Ua = (Ua + 60) ./ 120;
Ub = (Ub + 60) ./ 120;
Uc = (Uc + 60) ./ 120;
center = 0.5;
% // discussed here: https://community.simplefoc.com/t/embedded-world-2023-stm32-cordic-co-processor/3107/165?u=candas1
% // a bit more info here: https://microchipdeveloper.com/mct5001:which-zsm-is-best
% // Midpoint Clamp
Umin = min(Ua, min(Ub, Uc));
Umax = max(Ua, max(Ub, Uc));
center = center - (Umax+Umin) / 2;
Ua = Ua + center;
Ub = Ub + center;
Uc = Uc + center;

Ua = Ua .* 5217;
Ub = Ub .* 5217;
Uc = Uc .* 5217;