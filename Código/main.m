
t = -5:0.001:5;

at=(t>=0);
bt=-3*(t-1>=0);
ct=2*(t-2>=0);

dt= at+bt+ct;

subplot(2,2,1);
grid on;
plot(t,at,'b','LineWidth',2);
title('u(t)');

subplot(2,2,2);
grid on;
plot(t,bt,'b','LineWidth',2);
title('-3u(t-1)');

subplot(2,2,3);
grid on;
plot(t,ct,'b','LineWidth',2);
title('2c(t-2)');

subplot(2,2,4);
grid on;
plot(t,dt,'b','LineWidth',2);
title('d(t)');
