R = 1;
C = 1;

s = 0:0.0001:10;

H = 1./(1 + R * C * s);

fig = figure;
hold on;
plot(s,H);

ax = gca;
ax.TickLabelInterpreter = 'latex';
ax.XTick = [0];
ax.YTick = [0];
ax.XTickLabel = {0};
ax.YTickLabel = {0};

xlabel('$s$','Interpreter','latex','FontSize',14);
ylabel('$H(s)$','Interpreter','latex','FontSize',14);

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

%matlab2tikz('graphical_solution_for_allowed_energy_levels_for_even_wave_functions_in_finite_potential_well.tikz')

print(fig,'plot1','-dpdf','-r0')

close all; clear; clc;
