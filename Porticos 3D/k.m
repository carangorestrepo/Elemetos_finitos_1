
L=3;
b=0.3;%% columnas bY
h=0.4;%% columnas hX
A=b*h;
Iyz=b*h^3/12;
Ixz=h*b^3/12;
E=22*1000^2;
G=8.5*1000^2;
ks=5/6;
la=0;
lb=0;
bj=min([b,h]);
hj=max([b,h]);
J=(1/3-0.21*bj/hj*(1-1/12*(bj/hj)^4))*hj*bj^3  ;
cx=0/L;
cz=0/L;%%%Y
cy=3/L;%%%Z
cxz=sqrt(cx.^2+cz.^2);
syms L A E G ks la lb J Ixz Iyz cx cy cz cxz


Kloc =[[  (A*E)/L,                                                                                                                                                                                                                                            0,                                                                                                                                                                                                                                                                                                                                             0, -(A*E)/L,                                                                                                                                                                                                                                           0,                                                                                                                                                                                                                                                                                                                         0];
       [        0,                                                                                                          -(12*A*E*G*Ixz*ks)/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),                                                                                                  -(6*A*E*G*Ixz*ks*(L + la - lb))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Ixz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Ixz*la + A*G*ks*lb^3 + 12*E*Ixz*lb),        0,                                                                                                          (12*A*E*G*Ixz*ks)/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),                                                                              -(6*A*E*G*Ixz*ks*(L - la + lb))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Ixz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Ixz*la + A*G*ks*lb^3 + 12*E*Ixz*lb)];
       [        0,                                                                                             -(6*A*E*G*Ixz*ks*(L + la - lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)), -(4*(3*E^2*Ixz^2 + A*G*ks*E*Ixz*L^2 + A*G*ks*E*Ixz*L*la - 2*A*G*ks*E*Ixz*L*lb + A*G*ks*E*Ixz*la^2 - A*G*ks*E*Ixz*la*lb + A*G*ks*E*Ixz*lb^2))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Ixz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Ixz*la + A*G*ks*lb^3 + 12*E*Ixz*lb),        0,                                                                                             (6*A*E*G*Ixz*ks*(L + la - lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)), -(2*E*Ixz*(A*G*ks*L^2 + A*G*ks*L*la + A*G*ks*L*lb - 2*A*G*ks*la^2 + 2*A*G*ks*la*lb - 2*A*G*ks*lb^2 - 6*E*Ixz))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Ixz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Ixz*la + A*G*ks*lb^3 + 12*E*Ixz*lb)];
       [ -(A*E)/L,                                                                                                                                                                                                                                            0,                                                                                                                                                                                                                                                                                                                                             0,  (A*E)/L,                                                                                                                                                                                                                                           0,                                                                                                                                                                                                                                                                                                                         0];
       [        0,                                                                                                           (12*A*E*G*Ixz*ks)/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),                                                                                                   (6*A*E*G*Ixz*ks*(L + la - lb))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Ixz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Ixz*la + A*G*ks*lb^3 + 12*E*Ixz*lb),        0,                                                                                                         -(12*A*E*G*Ixz*ks)/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),                                                                               (6*A*E*G*Ixz*ks*(L - la + lb))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Ixz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Ixz*la + A*G*ks*lb^3 + 12*E*Ixz*lb)];
       [        0, -(6*A*E*G*Ixz*ks*(L - la + lb))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Ixz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Ixz*la + A*G*ks*lb^3 + 12*E*Ixz*lb),                     -(2*E*Ixz*(A*G*ks*L^2 + A*G*ks*L*la + A*G*ks*L*lb - 2*A*G*ks*la^2 + 2*A*G*ks*la*lb - 2*A*G*ks*lb^2 - 6*E*Ixz))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Ixz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Ixz*la + A*G*ks*lb^3 + 12*E*Ixz*lb),        0, (6*A*E*G*Ixz*ks*(L - la + lb))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Ixz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Ixz*la + A*G*ks*lb^3 + 12*E*Ixz*lb),     -(4*E*Ixz*(A*G*ks*L^2 - 2*A*G*ks*L*la + A*G*ks*L*lb + A*G*ks*la^2 - A*G*ks*la*lb + A*G*ks*lb^2 + 3*E*Ixz))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Ixz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Ixz*la + A*G*ks*lb^3 + 12*E*Ixz*lb)]];

Kloc1 =[[  (A*E)/L,                                                                                                                                                                                                                                            0,                                                                                                                                                                                                                                                                                                                                             0, -(A*E)/L,                                                                                                                                                                                                                                           0,                                                                                                                                                                                                                                                                                                                         0];
       [        0,                                                                                                          -(12*A*E*G*Iyz*ks)/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)),                                                                                                  -(6*A*E*G*Iyz*ks*(L + la - lb))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Iyz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Iyz*la + A*G*ks*lb^3 + 12*E*Iyz*lb),        0,                                                                                                          (12*A*E*G*Iyz*ks)/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)),                                                                              -(6*A*E*G*Iyz*ks*(L - la + lb))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Iyz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Iyz*la + A*G*ks*lb^3 + 12*E*Iyz*lb)];
       [        0,                                                                                             -(6*A*E*G*Iyz*ks*(L + la - lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)), -(4*(3*E^2*Iyz^2 + A*G*ks*E*Iyz*L^2 + A*G*ks*E*Iyz*L*la - 2*A*G*ks*E*Iyz*L*lb + A*G*ks*E*Iyz*la^2 - A*G*ks*E*Iyz*la*lb + A*G*ks*E*Iyz*lb^2))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Iyz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Iyz*la + A*G*ks*lb^3 + 12*E*Iyz*lb),        0,                                                                                             (6*A*E*G*Iyz*ks*(L + la - lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)), -(2*E*Iyz*(A*G*ks*L^2 + A*G*ks*L*la + A*G*ks*L*lb - 2*A*G*ks*la^2 + 2*A*G*ks*la*lb - 2*A*G*ks*lb^2 - 6*E*Iyz))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Iyz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Iyz*la + A*G*ks*lb^3 + 12*E*Iyz*lb)];
       [ -(A*E)/L,                                                                                                                                                                                                                                            0,                                                                                                                                                                                                                                                                                                                                             0,  (A*E)/L,                                                                                                                                                                                                                                           0,                                                                                                                                                                                                                                                                                                                         0];
       [        0,                                                                                                           (12*A*E*G*Iyz*ks)/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)),                                                                                                   (6*A*E*G*Iyz*ks*(L + la - lb))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Iyz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Iyz*la + A*G*ks*lb^3 + 12*E*Iyz*lb),        0,                                                                                                         -(12*A*E*G*Iyz*ks)/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)),                                                                               (6*A*E*G*Iyz*ks*(L - la + lb))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Iyz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Iyz*la + A*G*ks*lb^3 + 12*E*Iyz*lb)];
       [        0, -(6*A*E*G*Iyz*ks*(L - la + lb))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Iyz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Iyz*la + A*G*ks*lb^3 + 12*E*Iyz*lb),                     -(2*E*Iyz*(A*G*ks*L^2 + A*G*ks*L*la + A*G*ks*L*lb - 2*A*G*ks*la^2 + 2*A*G*ks*la*lb - 2*A*G*ks*lb^2 - 6*E*Iyz))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Iyz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Iyz*la + A*G*ks*lb^3 + 12*E*Iyz*lb),        0, (6*A*E*G*Iyz*ks*(L - la + lb))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Iyz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Iyz*la + A*G*ks*lb^3 + 12*E*Iyz*lb),     -(4*E*Iyz*(A*G*ks*L^2 - 2*A*G*ks*L*la + A*G*ks*L*lb + A*G*ks*la^2 - A*G*ks*la*lb + A*G*ks*lb^2 + 3*E*Iyz))/(- A*G*ks*L^3 + 3*A*G*ks*L^2*la + 3*A*G*ks*L^2*lb - 3*A*G*ks*L*la^2 - 6*A*G*ks*L*la*lb - 3*A*G*ks*L*lb^2 - 12*E*Iyz*L + A*G*ks*la^3 + 3*A*G*ks*la^2*lb + 3*A*G*ks*la*lb^2 + 12*E*Iyz*la + A*G*ks*lb^3 + 12*E*Iyz*lb)]];
   


kr=[(A*E)/L,         0,        0,       0,        0,         0,-(A*E)/L,         0,        0,     0,        0,         0;
          0,Kloc1(2,2),        0,       0,        0,Kloc1(2,3),       0,Kloc1(2,5),        0,     0,        0,Kloc1(2,6);
          0,         0,Kloc(2,2),       0,-Kloc(2,3),         0,       0,         0,Kloc(2,5),     0,-Kloc(2,6),         0;
          0,         0,        0,   G*J/L,        0,         0,       0,         0,        0,-G*J/L,        0,         0;  
          0,         0,-Kloc(3,2),       0,Kloc(3,3),         0,       0,         0,-Kloc(3,5),     0,Kloc(3,6),         0;
          0,Kloc1(3,2),        0,       0,        0,Kloc1(3,3),       0,Kloc1(3,5),        0,     0,        0,Kloc1(3,6);
   -(A*E)/L,         0,        0,       0,        0,         0, (A*E)/L,         0,        0,     0,        0,         0;
          0,Kloc1(5,2),        0,       0,        0,Kloc1(5,3),       0,Kloc1(5,5),        0,     0,        0,Kloc1(5,6);
          0,         0,Kloc(5,2),       0,-Kloc(5,3),         0,       0,         0,Kloc(5,5),     0,-Kloc(5,6),         0;
          0,         0,        0,  -G*J/L,        0,         0,       0,         0,        0, G*J/L,        0,          0;
          0,         0,-Kloc(6,2),       0,Kloc(6,3),         0,       0,         0,-Kloc(6,5),     0,Kloc(6,6),         0;
          0,Kloc1(6,2),        0,       0,        0,Kloc1(6,3),       0,Kloc1(6,5),        0,      0,        0,Kloc1(6,6)];

kr=[[  (A*E)/L,                                                                                                                                                    0,                                                                                                                                                   0,        0,                                                                                                                                                                                                                                   0,                                                                                                                                                                                                                                   0, -(A*E)/L,                                                                                                                                                   0,                                                                                                                                                    0,        0,                                                                                                                                                                                                                                   0,                                                                                                                                                                                                                                   0];
    [        0,              -(12*A*E*G*Iyz*ks)/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)),                                                                                                                                                   0,        0,                                                                                                                                                                                                                                   0,                                                                                -(6*A*E*G*Iyz*ks*(L + la - lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)),        0,              (12*A*E*G*Iyz*ks)/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)),                                                                                                                                                    0,        0,                                                                                                                                                                                                                                   0,                                                                                -(6*A*E*G*Iyz*ks*(L - la + lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz))];
    [        0,                                                                                                                                                    0,             -(12*A*E*G*Ixz*ks)/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),        0,                                                                                 (6*A*E*G*Ixz*ks*(L + la - lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),                                                                                                                                                                                                                                   0,        0,                                                                                                                                                   0,               (12*A*E*G*Ixz*ks)/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),        0,                                                                                 (6*A*E*G*Ixz*ks*(L - la + lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),                                                                                                                                                                                                                                   0];
    [        0,                                                                                                                                                    0,                                                                                                                                                   0,  (G*J)/L,                                                                                                                                                                                                                                   0,                                                                                                                                                                                                                                   0,        0,                                                                                                                                                   0,                                                                                                                                                    0, -(G*J)/L,                                                                                                                                                                                                                                   0,                                                                                                                                                                                                                                   0];
    [        0,                                                                                                                                                    0, (6*A*E*G*Ixz*ks*(L + la - lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),        0,     -(4*E*Ixz*(A*G*ks*L^2 + A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 - A*G*ks*la*lb + A*G*ks*lb^2 + 3*E*Ixz))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),                                                                                                                                                                                                                                   0,        0,                                                                                                                                                   0, -(6*A*E*G*Ixz*ks*(L + la - lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),        0, -(2*E*Ixz*(A*G*ks*L^2 + A*G*ks*L*la + A*G*ks*L*lb - 2*A*G*ks*la^2 + 2*A*G*ks*la*lb - 2*A*G*ks*lb^2 - 6*E*Ixz))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),                                                                                                                                                                                                                                   0];
    [        0, -(6*A*E*G*Iyz*ks*(L + la - lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)),                                                                                                                                                   0,        0,                                                                                                                                                                                                                                   0,     -(4*E*Iyz*(A*G*ks*L^2 + A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 - A*G*ks*la*lb + A*G*ks*lb^2 + 3*E*Iyz))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)),        0, (6*A*E*G*Iyz*ks*(L + la - lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)),                                                                                                                                                    0,        0,                                                                                                                                                                                                                                   0, -(2*E*Iyz*(A*G*ks*L^2 + A*G*ks*L*la + A*G*ks*L*lb - 2*A*G*ks*la^2 + 2*A*G*ks*la*lb - 2*A*G*ks*lb^2 - 6*E*Iyz))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz))];
    [ -(A*E)/L,                                                                                                                                                    0,                                                                                                                                                   0,        0,                                                                                                                                                                                                                                   0,                                                                                                                                                                                                                                   0,  (A*E)/L,                                                                                                                                                   0,                                                                                                                                                    0,        0,                                                                                                                                                                                                                                   0,                                                                                                                                                                                                                                   0];
    [        0,               (12*A*E*G*Iyz*ks)/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)),                                                                                                                                                   0,        0,                                                                                                                                                                                                                                   0,                                                                                 (6*A*E*G*Iyz*ks*(L + la - lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)),        0,             -(12*A*E*G*Iyz*ks)/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)),                                                                                                                                                    0,        0,                                                                                                                                                                                                                                   0,                                                                                 (6*A*E*G*Iyz*ks*(L - la + lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz))];
    [        0,                                                                                                                                                    0,              (12*A*E*G*Ixz*ks)/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),        0,                                                                                -(6*A*E*G*Ixz*ks*(L + la - lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),                                                                                                                                                                                                                                   0,        0,                                                                                                                                                   0,              -(12*A*E*G*Ixz*ks)/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),        0,                                                                                -(6*A*E*G*Ixz*ks*(L - la + lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),                                                                                                                                                                                                                                   0];
    [        0,                                                                                                                                                    0,                                                                                                                                                   0, -(G*J)/L,                                                                                                                                                                                                                                   0,                                                                                                                                                                                                                                   0,        0,                                                                                                                                                   0,                                                                                                                                                    0,  (G*J)/L,                                                                                                                                                                                                                                   0,                                                                                                                                                                                                                                   0];
    [        0,                                                                                                                                                    0, (6*A*E*G*Ixz*ks*(L - la + lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),        0, -(2*E*Ixz*(A*G*ks*L^2 + A*G*ks*L*la + A*G*ks*L*lb - 2*A*G*ks*la^2 + 2*A*G*ks*la*lb - 2*A*G*ks*lb^2 - 6*E*Ixz))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),                                                                                                                                                                                                                                   0,        0,                                                                                                                                                   0, -(6*A*E*G*Ixz*ks*(L - la + lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),        0,     -(4*E*Ixz*(A*G*ks*L^2 - 2*A*G*ks*L*la + A*G*ks*L*lb + A*G*ks*la^2 - A*G*ks*la*lb + A*G*ks*lb^2 + 3*E*Ixz))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Ixz)),                                                                                                                                                                                                                                   0];
    [        0, -(6*A*E*G*Iyz*ks*(L - la + lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)),                                                                                                                                                   0,        0,                                                                                                                                                                                                                                   0, -(2*E*Iyz*(A*G*ks*L^2 + A*G*ks*L*la + A*G*ks*L*lb - 2*A*G*ks*la^2 + 2*A*G*ks*la*lb - 2*A*G*ks*lb^2 - 6*E*Iyz))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)),        0, (6*A*E*G*Iyz*ks*(L - la + lb))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz)),                                                                                                                                                    0,        0,                                                                                                                                                                                                                                   0,     -(4*E*Iyz*(A*G*ks*L^2 - 2*A*G*ks*L*la + A*G*ks*L*lb + A*G*ks*la^2 - A*G*ks*la*lb + A*G*ks*lb^2 + 3*E*Iyz))/((la - L + lb)*(A*G*ks*L^2 - 2*A*G*ks*L*la - 2*A*G*ks*L*lb + A*G*ks*la^2 + 2*A*G*ks*la*lb + A*G*ks*lb^2 + 12*E*Iyz))]];
 
a=1

                 
%% matriz de transformaci�n direc�n x y 4-86     william weber           
T = [[           cx,  cy,           cz,            0,   0,            0,            0,   0,            0,            0,   0,            0];
     [ -(cx*cy)/cxz, cxz, -(cy*cz)/cxz,            0,   0,            0,            0,   0,            0,            0,   0,            0];
     [      -cz/cxz,   0,       cx/cxz,            0,   0,            0,            0,   0,            0,            0,   0,            0];
     [            0,   0,            0,           cx,  cy,           cz,            0,   0,            0,            0,   0,            0];
     [            0,   0,            0, -(cx*cy)/cxz, cxz, -(cy*cz)/cxz,            0,   0,            0,            0,   0,            0];
     [            0,   0,            0,      -cz/cxz,   0,       cx/cxz,            0,   0,            0,            0,   0,            0];
     [            0,   0,            0,            0,   0,            0,           cx,  cy,           cz,            0,   0,            0];
     [            0,   0,            0,            0,   0,            0, -(cx*cy)/cxz, cxz, -(cy*cz)/cxz,            0,   0,            0];
     [            0,   0,            0,            0,   0,            0,      -cz/cxz,   0,       cx/cxz,            0,   0,            0];
     [            0,   0,            0,            0,   0,            0,            0,   0,            0,           cx,  cy,           cz];
     [            0,   0,            0,            0,   0,            0,            0,   0,            0, -(cx*cy)/cxz, cxz, -(cy*cz)/cxz];
     [            0,   0,            0,            0,   0,            0,            0,   0,            0,      -cz/cxz,   0,       cx/cxz]];
 
 %% matriz de transformaci�n direc�n z   4-87    william weber    
 %else
T = [[   0, cy, 0,   0,  0, 0,   0,  0, 0,   0,  0, 0];
     [ -cy,  0, 0,   0,  0, 0,   0,  0, 0,   0,  0, 0];
     [   0,  0, 1,   0,  0, 0,   0,  0, 0,   0,  0, 0];
     [   0,  0, 0,   0, cy, 0,   0,  0, 0,   0,  0, 0];
     [   0,  0, 0, -cy,  0, 0,   0,  0, 0,   0,  0, 0];
     [   0,  0, 0,   0,  0, 1,   0,  0, 0,   0,  0, 0];
     [   0,  0, 0,   0,  0, 0,   0, cy, 0,   0,  0, 0];
     [   0,  0, 0,   0,  0, 0, -cy,  0, 0,   0,  0, 0];
     [   0,  0, 0,   0,  0, 0,   0,  0, 1,   0,  0, 0];
     [   0,  0, 0,   0,  0, 0,   0,  0, 0,   0, cy, 0];
     [   0,  0, 0,   0,  0, 0,   0,  0, 0, -cy,  0, 0];
     [   0,  0, 0,   0,  0, 0,   0,  0, 0,   0,  0, 1]];
 %end
 Ke=T'*kr*T;