last_crossing = 1;
last_angle = MOT_RL_20250823_180918_NEW_V2_3.Angle_deg_(1);
deltaT = 1;
Crossing_speed = zeros(length(MOT_RL_20250823_180918_NEW_V2_3.Angle_deg_), 1);
start_pos = 5;
cross = zeros(length(MOT_RL_20250823_180918_NEW_V2_3.Angle_deg_), 1);
while MOT_RL_20250823_180918_NEW_V2_3.Angle_deg_(start_pos) - MOT_RL_20250823_180918_NEW_V2_3.Angle_deg_(start_pos-1) < 300
    start_pos = start_pos + 1;
end
for n = start_pos:length(MOT_RL_20250823_180918_NEW_V2_3.Angle_deg_)
    if MOT_RL_20250823_180918_NEW_V2_3.Angle_deg_(n) - MOT_RL_20250823_180918_NEW_V2_3.Angle_deg_(n-1) > 300
        if n - last_crossing < 16
            Crossing_speed(n) = Crossing_speed(n-1);
            continue;
        else
            deltaT = n - last_crossing;
            cross(n) = 4000;
            last_crossing = n;
            Crossing_speed(n) = 11E3/(deltaT)*15;
        end
    elseif (n - last_crossing) > deltaT
        deltaT = n - last_crossing;
        Crossing_speed(n) = 11E3/(deltaT)*15;
    else
        Crossing_speed(n) = Crossing_speed(n-1);
    end
    % if Crossing_speed(n) - Crossing_speed(n-1) > 2000
    %     Crossing_speed(n) = Crossing_speed(n-1);
    % end
end
disp("complete")
figure;
plot(Crossing_speed);