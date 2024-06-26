function [dHxdxi,dHxdeta,dHydxi,dHydeta]=dH(x12,x23,x31,y12,y23,y31,xi,eta)



dHxdxi =[(6*x12*(eta + xi - 1))/(x12^2 + y12^2) - (6*eta*x31)/(x31^2 + y31^2) + (6*x12*xi)/(x12^2 + y12^2);
        - (3*eta*x31*y31)/(x31^2 + y31^2) - (3*x12*xi*y12)/(x12^2 + y12^2) - (3*x12*y12*(eta + xi - 1))/(x12^2 + y12^2);
        4*eta + 4*xi + (4*(x12^2 - 2*y12^2)*(eta + xi - 1))/(4*x12^2 + 4*y12^2) + (4*eta*(x31^2 - 2*y31^2))/(4*x31^2 + 4*y31^2) + (4*xi*(x12^2 - 2*y12^2))/(4*x12^2 + 4*y12^2) - 3;
        - (6*x12*(eta + xi - 1))/(x12^2 + y12^2) - (6*eta*x23)/(x23^2 + y23^2) - (6*x12*xi)/(x12^2 + y12^2);
        (3*eta*x23*y23)/(x23^2 + y23^2) - (3*x12*xi*y12)/(x12^2 + y12^2) - (3*x12*y12*(eta + xi - 1))/(x12^2 + y12^2);
        4*xi + (4*(x12^2 - 2*y12^2)*(eta + xi - 1))/(4*x12^2 + 4*y12^2) - (4*eta*(x23^2 - 2*y23^2))/(4*x23^2 + 4*y23^2) + (4*xi*(x12^2 - 2*y12^2))/(4*x12^2 + 4*y12^2) - 1;
        (6*eta*x23)/(x23^2 + y23^2) + (6*eta*x31)/(x31^2 + y31^2);
        (12*eta*x23*y23)/(4*x23^2 + 4*y23^2) - (12*eta*x31*y31)/(4*x31^2 + 4*y31^2);
        -(3*eta*(x23^2*y31^2 - x31^2*y23^2))/((x23^2 + y23^2)*(x31^2 + y31^2))];

dHxdeta =[(6*x12*xi)/(x12^2 + y12^2) - (6*eta*x31)/(x31^2 + y31^2) - (6*x31*(eta + xi - 1))/(x31^2 + y31^2);
        - (3*eta*x31*y31)/(x31^2 + y31^2) - (3*x12*xi*y12)/(x12^2 + y12^2) - (3*x31*y31*(eta + xi - 1))/(x31^2 + y31^2);
        4*eta + 4*xi + (4*(x31^2 - 2*y31^2)*(eta + xi - 1))/(4*x31^2 + 4*y31^2) + (4*eta*(x31^2 - 2*y31^2))/(4*x31^2 + 4*y31^2) + (4*xi*(x12^2 - 2*y12^2))/(4*x12^2 + 4*y12^2) - 3;
        - (6*x12*xi)/(x12^2 + y12^2) - (6*x23*xi)/(x23^2 + y23^2);
        (12*x23*xi*y23)/(4*x23^2 + 4*y23^2) - (12*x12*xi*y12)/(4*x12^2 + 4*y12^2);
        (3*xi*(x12^2*y23^2 - x23^2*y12^2))/((x12^2 + y12^2)*(x23^2 + y23^2));
        (6*x31*(eta + xi - 1))/(x31^2 + y31^2) + (6*eta*x31)/(x31^2 + y31^2) + (6*x23*xi)/(x23^2 + y23^2);
        (3*x23*xi*y23)/(x23^2 + y23^2) - (3*eta*x31*y31)/(x31^2 + y31^2) - (3*x31*y31*(eta + xi - 1))/(x31^2 + y31^2);
        4*eta + (4*(x31^2 - 2*y31^2)*(eta + xi - 1))/(4*x31^2 + 4*y31^2) + (4*eta*(x31^2 - 2*y31^2))/(4*x31^2 + 4*y31^2) - (4*xi*(x23^2 - 2*y23^2))/(4*x23^2 + 4*y23^2) - 1];

dHydxi =[(6*y12*(eta + xi - 1))/(x12^2 + y12^2) - (6*eta*y31)/(x31^2 + y31^2) + (6*xi*y12)/(x12^2 + y12^2);
        (4*(2*x12^2 - y12^2)*(eta + xi - 1))/(4*x12^2 + 4*y12^2) - 4*xi - 4*eta + (4*eta*(2*x31^2 - y31^2))/(4*x31^2 + 4*y31^2) + (4*xi*(2*x12^2 - y12^2))/(4*x12^2 + 4*y12^2) + 3;
        (3*eta*x31*y31)/(x31^2 + y31^2) + (3*x12*xi*y12)/(x12^2 + y12^2) + (3*x12*y12*(eta + xi - 1))/(x12^2 + y12^2);
        - (6*y12*(eta + xi - 1))/(x12^2 + y12^2) - (6*eta*y23)/(x23^2 + y23^2) - (6*xi*y12)/(x12^2 + y12^2);
        (4*(2*x12^2 - y12^2)*(eta + xi - 1))/(4*x12^2 + 4*y12^2) - 4*xi - (4*eta*(2*x23^2 - y23^2))/(4*x23^2 + 4*y23^2) + (4*xi*(2*x12^2 - y12^2))/(4*x12^2 + 4*y12^2) + 1;
        (3*x12*xi*y12)/(x12^2 + y12^2) - (3*eta*x23*y23)/(x23^2 + y23^2) + (3*x12*y12*(eta + xi - 1))/(x12^2 + y12^2);
        (6*eta*y23)/(x23^2 + y23^2) + (6*eta*y31)/(x31^2 + y31^2);
        -(3*eta*(x23^2*y31^2 - x31^2*y23^2))/((x23^2 + y23^2)*(x31^2 + y31^2));
        (12*eta*x31*y31)/(4*x31^2 + 4*y31^2) - (12*eta*x23*y23)/(4*x23^2 + 4*y23^2)];

dHydeta =[(6*xi*y12)/(x12^2 + y12^2) - (6*eta*y31)/(x31^2 + y31^2) - (6*y31*(eta + xi - 1))/(x31^2 + y31^2);
        (4*(2*x31^2 - y31^2)*(eta + xi - 1))/(4*x31^2 + 4*y31^2) - 4*xi - 4*eta + (4*eta*(2*x31^2 - y31^2))/(4*x31^2 + 4*y31^2) + (4*xi*(2*x12^2 - y12^2))/(4*x12^2 + 4*y12^2) + 3;
        (3*eta*x31*y31)/(x31^2 + y31^2) + (3*x12*xi*y12)/(x12^2 + y12^2) + (3*x31*y31*(eta + xi - 1))/(x31^2 + y31^2);
        - (6*xi*y12)/(x12^2 + y12^2) - (6*xi*y23)/(x23^2 + y23^2);
        (3*xi*(x12^2*y23^2 - x23^2*y12^2))/((x12^2 + y12^2)*(x23^2 + y23^2));
        (12*x12*xi*y12)/(4*x12^2 + 4*y12^2) - (12*x23*xi*y23)/(4*x23^2 + 4*y23^2);
        (6*y31*(eta + xi - 1))/(x31^2 + y31^2) + (6*eta*y31)/(x31^2 + y31^2) + (6*xi*y23)/(x23^2 + y23^2);
        (4*(2*x31^2 - y31^2)*(eta + xi - 1))/(4*x31^2 + 4*y31^2) - 4*eta + (4*eta*(2*x31^2 - y31^2))/(4*x31^2 + 4*y31^2) - (4*xi*(2*x23^2 - y23^2))/(4*x23^2 + 4*y23^2) + 1;
        (3*eta*x31*y31)/(x31^2 + y31^2) - (3*x23*xi*y23)/(x23^2 + y23^2) + (3*x31*y31*(eta + xi - 1))/(x31^2 + y31^2)];
 

