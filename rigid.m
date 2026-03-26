% 使用bvp4c求解边值问题
clc; clear;

% 定义微分方程
% y(1) = y, y(2) = y'


% 初始猜测解
solinit = bvpinit(linspace(0, 0.99, 100), [0 0]);  % 避免 x = 1 的奇异性
sol = bvp4c(@odefun, @bcfun, solinit);

% 解析数值解
x = linspace(0, 0.99, 200);
y = deval(sol, x);

% 绘图
plot(x, y(1,:), 'b-', 'LineWidth', 2); grid on;
xlabel('x');
ylabel('y(x)');
title('解 y(x) 的图像');
