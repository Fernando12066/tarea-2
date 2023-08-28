%--Funcion ode45 que soluciona el sistema pD--%
[t,x]=ode45(@PD,[0 10], [0 (35*pi)/180 0 0]); %[theta1 theta2 theta'1 theta'2]
% graficar
%Fig 1
figure(1)
plot(t,x(:,1));
grid on
title("theta 1");
xlabel("Time");
ylabel("Rad");
%Figura 2
figure(2)
plot(t,x(:,2));
grid on
title("theta 2");
xlabel("Time");
ylabel("Rad");
