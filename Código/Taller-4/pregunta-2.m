
t = -5:0.001:5;

u = @(t) (t>=0);

## at =  u(t+1.5) + u(t+0.5) - 4*u(t-0.5) + u(t-1) + u(t-1.5);
## at = -u(t-1.5) - u(t-0.5) + 4*u(t+0.5) - u(t+1) - u(t+1.5); *
   at = -u(t+1.5) - u(t+0.5) + 4*u(t-0.5) - u(t-1) - u(t-1.5); 



plot(t,at,'b','LineWidth',2);
grid on;
title('u(t)');
axis([-2 4 -2.5 2.5]);
