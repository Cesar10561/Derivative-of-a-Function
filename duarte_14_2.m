% Create the x and y arrays
x = 0:0.01:10;
y = 5*x.^2.*exp(-0.2*x).*sin(x);
n = length(x);
subplot(2,1,1)
plot(x,y)
xlim([0 10])
grid on
title('Original Function')
% Find the CDE of the derivative
der = (y(3:n)-y(1:n-2))./(x(3:n)-x(1:n-2));
subplot(2,1,2)
plot(x(2:n-1),der)
xlim([0 10])
grid on
title('Derivative of the Function')
xlabel("x")
ylabel("Derivative(dy/dx)")

