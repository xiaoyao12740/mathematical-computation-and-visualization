syms y(x)  % 定义符号函数 y(x)
dy = diff(y, x);    % 一阶导数 y'
d2y = diff(y, x, 2); % 二阶导数 y''
% 定义微分方程：(92.6/612.5) * sqrt(1 + dy^2) = d2y - x * d2y
eqn = (92.6/612.5) * sqrt(1 + dy^2) == d2y * (1 - x);
% 初始条件（根据题目假设）
cond1 = y(0) == 0;    % y(0) = 0
cond2 = dy(0) == 0;    % y'(0) = 0
% 求解微分方程
y_sol = dsolve(eqn, cond1, cond2);
disp('解析解:');
pretty(y_sol);