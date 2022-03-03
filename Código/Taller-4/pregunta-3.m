
t = -3:0.001:5;

u = @(t) (t.*(t>=0));

at = -3 * u(t+2) + 2 * u(t+1) + 5 * u(t) - 3 * u(t-1) - 2 * u(t-2) + u(t-3);


plot(t,at,'b','LineWidth',2);
grid on;
title('a(t)');
## axis([-2 4 -2.5 2.5]);
