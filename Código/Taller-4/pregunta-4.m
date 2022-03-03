
t = -3:0.001:5;

u = @(t) (t>=0);

at = u(t) - 2*u(t-1) + 2*u(t-2) - u(t-3) ;


plot(t,at,'b','LineWidth',2);
grid on;
title('a(t)');
