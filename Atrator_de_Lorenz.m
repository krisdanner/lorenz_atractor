% Este código utiliza a funçãoo ode45 para integrar numericamente as equaçõeses 
% diferenciais do Atrator de Lorenz e, em seguida, plota o retrato de fase 
% resultante utilizando a função plot3.

% Autor: Christian Danner Ramos de Carvalho

% Parâmetros do Atrator de Lorenz
sigma = 10;
rho = 28;
beta = 8/3;

% Equações diferenciais do Atrator de Lorenz
dx = @(t,x) sigma*(x(2) - x(1));
dy = @(t,x) x(1)*(rho - x(3)) - x(2);
dz = @(t,x) x(1)*x(2) - beta*x(3);

% Integração numérica das equações diferenciais
[t,x] = ode45(@(t,x) [dx(t,x) dy(t,x) dz(t,x)]', [0 100], [1 1 1]);

% Plotar retrato de fase
figure;
plot3(x(:,1), x(:,2), x(:,3));
grid on;
xlabel('x');
ylabel('y');
zlabel('z');
title('Atrator de Lorenz');
