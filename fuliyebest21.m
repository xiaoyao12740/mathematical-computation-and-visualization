% 定义原函数 f(x)，这里以方波函数为例
% 在 -pi 到 pi 区间，-pi 到 0 为 -1，0 到 pi 为 1
f = @(x) (x >= 0) - (x < 0);

% 定义绘图区间
x = linspace(-pi, pi, 1000);

% 计算不同阶数的傅里叶级数部分和
N = [1, 3, 5, 10, 20]; % 不同的阶数
colors = {'b', 'g', 'r', 'c', 'm'}; % 不同颜色

figure;
hold on;

% 绘制原函数
plot(x, f(x), 'k', 'LineWidth', 2, 'DisplayName', 'Original Function');

% 循环计算并绘制不同阶数的傅里叶级数部分和
for i = 1:length(N)
    n = N(i);
    partial_sum = zeros(size(x));
    for k = 1:2:n
        partial_sum = partial_sum + (4/pi) * (1/k) * sin(k * x);
    end
    plot(x, partial_sum, colors{i}, 'DisplayName', ['N = ' num2str(n)]);
end

% 添加图例、标题和坐标轴标签
legend show;
title('Fourier Series Partial Sum Approximation');
xlabel('x');
ylabel('y');
grid on;
hold off;