function [Ia, Ib, Ic] = ideal_3phase(data)
    % angle = data.Angle_deg_ - 1.28/2/pi*360; % RR
    angle = data.Angle_deg_ - 4.74/2/pi*360; %RL
    % angle = data.Angle_deg_ - 3.72/2/pi*360; %test motor
    sa = sind(angle);
    ca = cosd(angle);
    ideal_Id = 0;
    ideal_Iq = data.TorqueCmd_1_1000_ ./ 0.492;
    Ialpha =  ca .* ideal_Id - sa .* ideal_Iq;
    Ibeta =  sa .* ideal_Id + ca .* ideal_Iq;
    Ia = Ialpha;
    Ib = -0.5 .* Ialpha + 0.86602540378 .* Ibeta;
    Ic = -0.5 .* Ialpha - 0.86602540378 .* Ibeta;
end