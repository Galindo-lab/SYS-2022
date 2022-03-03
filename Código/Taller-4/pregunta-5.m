
t = -5:0.001:5;

uu = @(t) (t>=0);
u = @(t) (t.*(t>=0));

# debe iniciar en -1
## at = u(t) + u(t-1) -5*u(t-2) + 2*u(t-3);

## no se parece
##at = u(t-1) + u(t) - 3*u(t+1) + 3*u(t+2);

# no se parece
##at = t.*uu(t+1) + t.*uu(t) - 5*(t.*uu(t-1)) + 2*(t.*uu(t-2));

at = u(t+1) + u(t) - 5*u(t-1) + 2*u(t-2);

plot(t,at,'b','LineWidth',2);
grid on;
title('a(t)');
