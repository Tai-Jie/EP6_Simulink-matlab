function [id,iq,idlow, iqlow] = idq_cal(data)
    iU = data.IUPhase_A_;
    iV = data.IVPhase_A_;
    iW = data.IWPhase_A_;
    angle = data.Angle_deg_ - 1.28/2/pi*360; % RR
    % angle = data.Angle_deg_ - 4.74/2/pi*360; %RL
    % angle = data.Angle_deg_ - 3.72/2/pi*360; %test motor
    angle = normalize_angle(angle);
    mid_current = (iU + iV + iW) ./ 3.0;
    % // 将三相电流转换为两相电流
    a = iU - mid_current;
    b = iV - mid_current;
    I_alpha = a;
    I_beta = 0.57735026919.*(2*b+a);
    % //	 float Iq=-sin(angle)*I_alpha+cos(angle)*I_beta;
    % //	 float Id=cos(angle)*I_alpha+sin(angle)*I_beta;
    iq = -sind(angle).*I_alpha+cosd(angle).*I_beta;
    id = cosd(angle).*I_alpha+sind(angle).*I_beta;
    iqlow = lpf(iq);
    idlow = lpf(id);
    % figure;
    % plot(idlow,'DisplayName','Idlow');hold on;plot(id,'DisplayName','Id');hold off;
    % figure;
    % plot(iqlow,'DisplayName','Iqlow');hold on;plot(iq,'DisplayName','Iq');hold off;
end