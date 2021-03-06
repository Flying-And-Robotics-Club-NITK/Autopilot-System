%intialisation
syms nz ny q r f1 eps
kt = 1.69e-2;
kf = 6.41e-6;
gamma = 2.75e-3;
rho = 1
m=0.5;
g= 9.8;
l = 0.17;
IxxT = 3.2e-3;
IzzT = 5.5e-3;
IzzP = 1.5e-5;

[f1 r q eps nz ny]=vpasolve((kt/gamma)*f1*(2-rho)-r==0, f1*(2+rho)*nz==m*g, ny-(eps*q)==0, nz-(eps*r)==0, eps-sqrt(1/(q^2 + r^2))==0, 0==(rho*f1*l) -(IzzT-IxxT)*q*r-(IzzP/sqrt(kf))*q*(2+sqrt(rho))*(f1^(1/2)),f1, r, q, eps, nz, ny)
f2 = rho*f1

