clear
clc
i=input('请输入你想要运算的精度:');
pi=0;
for n = 1:i
    pi=  pi+4*(-1)^(n+1)/(2*n - 1);
end
fprintf('π的估值为%f10。\n',pi);