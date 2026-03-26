%参数方程绘制圆
r=1;
theta=0:0.01:2*pi;
x=r*cos(theta);
y=r*sin(theta);
plot(x,y,'r')
axis equal;
grid on 
xlabel('x轴');
ylabel('y轴');
title('半径为1的圆');
x = -1:0.001:1;
y_upper = sqrt(1 - x.^2);  % 上半圆（y≥0）
y_lower = -sqrt(1 - x.^2); % 下半圆（y≤0）

plot(x, y_upper, 'b', x, y_lower, 'b'); % 同时绘制上下半圆
axis equal;  % 保证图形是正圆
grid on;
xlabel('x'); ylabel('y');
title('完整的圆');