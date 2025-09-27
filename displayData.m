tiledlayout(3,1)
ax1 = nexttile;
plot(MOT_RR_20250827_080120_NEW_V2_3.IUPhase_A_,'DisplayName','IUPhase_A_');hold on;plot(MOT_RR_20250827_080120_NEW_V2_3.IVPhase_A_,'DisplayName','IVPhase_A_');plot(MOT_RR_20250827_080120_NEW_V2_3.IWPhase_A_,'DisplayName','IWPhaseA');hold off;
% plot(Iu,'DisplayName','ideal');hold on;plot(MOT_RR_20250827_080120_NEW_V2_3.IUPhase_A_,'DisplayName','Iu');hold off;
legend;

ax2 = nexttile;
% plot(MOT_RR_20250827_080120_NEW_V2_3.Id,'DisplayName','id');hold on;plot(MOT_RR_20250827_080120_NEW_V2_3.Iq,'DisplayName','iq');hold off;
% plot(MOT_RR_20250827_080120_NEW_V2_3.Angle_deg_, 'DisplayName', 'angle');
plot(MOT_RR_20250827_080120_NEW_V2_3.SINE, 'DisplayName','Sine');hold on;plot(MOT_RR_20250827_080120_NEW_V2_3.COS,'DisplayName','Cos');hold off;
legend;

%% third tile
ax3 = nexttile;
% plot(MOT_RR_20250827_080120_NEW_V2_3.TorqueCmd_1_1000_, 'DisplayName','torqueCmd');hold on;plot(MOT_RR_20250827_080120_NEW_V2_3.State,"DisplayName","state");
% plot(MOT_RR_20250827_080120_NEW_V2_3.IUf,'DisplayName','IUf');hold on;plot(MOT_RR_20250827_080120_NEW_V2_3.IVf,'DisplayName','IVf');plot(MOT_RR_20250827_080120_NEW_V2_3.IWf,'DisplayName','IWf');hold off;
% plot(MOT_RR_20250827_080120_NEW_V2_3.VQ_V_,'DisplayName','VQV');ho
% 
% 
% ld on;plot(MOT_RR_20250827_080120_NEW_V2_3.VD_V_,'DisplayName','VDV');hold off;
% plot(MOT_RR_20250827_080120_NEW_V2_3.Angle_deg_, 'DisplayName', 'angle');
% legend;

% 
% ax4 = nexttile;
plot(MOT_RR_20250827_080120_NEW_V2_3.VU_CCR_,'DisplayName','VUCCR');hold on;plot(MOT_RR_20250827_080120_NEW_V2_3.VV_CCR_,'DisplayName','VVCCR');plot(MOT_RR_20250827_080120_NEW_V2_3.VW_CCR_,'DisplayName','VWCCR');hold off;
% plot(MOT_RR_20250827_080120_NEW_V2_3.Speed_RPM_, 'DisplayName','speed');
legend;

linkaxes([ax1 ax2 ax3], 'x');