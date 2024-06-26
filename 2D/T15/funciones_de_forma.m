clear
clc
syms xi eta 
L1 = 1 - xi - eta;
L2 = xi;
L3 = eta;

Nforma=  simplify([(L1*(32*L1^3 - 48*L1^2 + 22*L1 - 3))/3;
                 (L2*(32*L2^3 - 48*L2^2 + 22*L2 - 3))/3;
                 (L3*(32*L3^3 - 48*L3^2 + 22*L3 - 3))/3;
                 (16*L1*L2*(8*L1^2 - 6*L1 + 1))/3;
                 4*L1*L2*(4*L1 - 1)*(4*L2 - 1);
                 (16*L1*L2*(8*L2^2 - 6*L2 + 1))/3;
                 (16*L2*L3*(8*L2^2 - 6*L2 + 1))/3;
                 4*L2*L3*(4*L2 - 1)*(4*L3 - 1);
                 (16*L2*L3*(8*L3^2 - 6*L3 + 1))/3;
                 (16*L1*L3*(8*L3^2 - 6*L3 + 1))/3;
                 4*L1*L3*(4*L1 - 1)*(4*L3 - 1);
                 (16*L1*L3*(8*L1^2 - 6*L1 + 1))/3;
                 32*L1*L2*L3*(4*L1 - 1);
                 32*L1*L2*L3*(4*L2 - 1);
                 32*L1*L2*L3*(4*L3 - 1)])


dN_dxi = simplify(diff(Nforma,xi))
     
dN_deta = simplify(diff(Nforma,eta))







