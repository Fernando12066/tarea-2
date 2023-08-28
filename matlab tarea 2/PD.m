function dx=PD(t,x)
%----Definición de nuestros parametros----%
a1=0.2;
b1=0.3;
a2=0.1;
b2=0.25;
f=9.81;
e1=0.2;
%----Creamos nuestra matriz de variables de estado----%
dx=zeros(4,1);
%----Creamos nuestras matrices----%
A=[(a1+a2)*b1 a2*b2*cos(x(2)-x(1));b1*cos(x(2)-x(1)) b2];
E=[e1 -a2*b2*x(4)*sin(x(2)-x(1));b1*x(3)*sin(x(2)-x(1)) 0];
F=[(a1+a2)*f*sin(x(1));f*sin(x(2))];
%----Definición dinamica del sistema (espacios de estado)----%
dx(1)=x(3);
dx(2)=x(4);
dx(3:4)=inv(A)*(-E*[x(3);x(4)]-F);
%-------------------------------------------------------------%