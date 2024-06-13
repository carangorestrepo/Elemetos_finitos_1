function [coor,connex,climit,charg,E,nu,th]=pure_bending40x4

E=100000;
nu=0;
th=1;

coor=[0	-0.1	;
0.25	-0.1	;
0.5	-0.1	;
0.75	-0.1	;
1	-0.1	;
1.25	-0.1	;
1.5	-0.1	;
1.75	-0.1	;
2	-0.1	;
2.25	-0.1	;
2.5	-0.1	;
2.75	-0.1	;
3	-0.1	;
3.25	-0.1	;
3.5	-0.1	;
3.75	-0.1	;
4	-0.1	;
4.25	-0.1	;
4.5	-0.1	;
4.75	-0.1	;
5	-0.1	;
5.25	-0.1	;
5.5	-0.1	;
5.75	-0.1	;
6	-0.1	;
6.25	-0.1	;
6.5	-0.1	;
6.75	-0.1	;
7	-0.1	;
7.25	-0.1	;
7.5	-0.1	;
7.75	-0.1	;
8	-0.1	;
8.25	-0.1	;
8.5	-0.1	;
8.75	-0.1	;
9	-0.1	;
9.25	-0.1	;
9.5	-0.1	;
9.75	-0.1	;
10	-0.1	;
0	-0.05	;
0.25	-0.05	;
0.5	-0.05	;
0.75	-0.05	;
1	-0.05	;
1.25	-0.05	;
1.5	-0.05	;
1.75	-0.05	;
2	-0.05	;
2.25	-0.05	;
2.5	-0.05	;
2.75	-0.05	;
3	-0.05	;
3.25	-0.05	;
3.5	-0.05	;
3.75	-0.05	;
4	-0.05	;
4.25	-0.05	;
4.5	-0.05	;
4.75	-0.05	;
5	-0.05	;
5.25	-0.05	;
5.5	-0.05	;
5.75	-0.05	;
6	-0.05	;
6.25	-0.05	;
6.5	-0.05	;
6.75	-0.05	;
7	-0.05	;
7.25	-0.05	;
7.5	-0.05	;
7.75	-0.05	;
8	-0.05	;
8.25	-0.05	;
8.5	-0.05	;
8.75	-0.05	;
9	-0.05	;
9.25	-0.05	;
9.5	-0.05	;
9.75	-0.05	;
10	-0.05	;
0	0	;
0.25	0	;
0.5	0	;
0.75	0	;
1	0	;
1.25	0	;
1.5	0	;
1.75	0	;
2	0	;
2.25	0	;
2.5	0	;
2.75	0	;
3	0	;
3.25	0	;
3.5	0	;
3.75	0	;
4	0	;
4.25	0	;
4.5	0	;
4.75	0	;
5	0	;
5.25	0	;
5.5	0	;
5.75	0	;
6	0	;
6.25	0	;
6.5	0	;
6.75	0	;
7	0	;
7.25	0	;
7.5	0	;
7.75	0	;
8	0	;
8.25	0	;
8.5	0	;
8.75	0	;
9	0	;
9.25	0	;
9.5	0	;
9.75	0	;
10	0	;
0	0.05	;
0.25	0.05	;
0.5	0.05	;
0.75	0.05	;
1	0.05	;
1.25	0.05	;
1.5	0.05	;
1.75	0.05	;
2	0.05	;
2.25	0.05	;
2.5	0.05	;
2.75	0.05	;
3	0.05	;
3.25	0.05	;
3.5	0.05	;
3.75	0.05	;
4	0.05	;
4.25	0.05	;
4.5	0.05	;
4.75	0.05	;
5	0.05	;
5.25	0.05	;
5.5	0.05	;
5.75	0.05	;
6	0.05	;
6.25	0.05	;
6.5	0.05	;
6.75	0.05	;
7	0.05	;
7.25	0.05	;
7.5	0.05	;
7.75	0.05	;
8	0.05	;
8.25	0.05	;
8.5	0.05	;
8.75	0.05	;
9	0.05	;
9.25	0.05	;
9.5	0.05	;
9.75	0.05	;
10	0.05	;
0	0.1	;
0.25	0.1	;
0.5	0.1	;
0.75	0.1	;
1	0.1	;
1.25	0.1	;
1.5	0.1	;
1.75	0.1	;
2	0.1	;
2.25	0.1	;
2.5	0.1	;
2.75	0.1	;
3	0.1	;
3.25	0.1	;
3.5	0.1	;
3.75	0.1	;
4	0.1	;
4.25	0.1	;
4.5	0.1	;
4.75	0.1	;
5	0.1	;
5.25	0.1	;
5.5	0.1	;
5.75	0.1	;
6	0.1	;
6.25	0.1	;
6.5	0.1	;
6.75	0.1	;
7	0.1	;
7.25	0.1	;
7.5	0.1	;
7.75	0.1	;
8	0.1	;
8.25	0.1	;
8.5	0.1	;
8.75	0.1	;
9	0.1	;
9.25	0.1	;
9.5	0.1	;
9.75	0.1	;
10	0.1	];
coor(:,2)=coor(:,2)*5;

connex=[1	2	42	;	42	2	43	;
2	3	43	;	43	3	44	;
3	4	44	;	44	4	45	;
4	5	45	;	45	5	46	;
5	6	46	;	46	6	47	;
6	7	47	;	47	7	48	;
7	8	48	;	48	8	49	;
8	9	49	;	49	9	50	;
9	10	50	;	50	10	51	;
10	11	51	;	51	11	52	;
11	12	52	;	52	12	53	;
12	13	53	;	53	13	54	;
13	14	54	;	54	14	55	;
14	15	55	;	55	15	56	;
15	16	56	;	56	16	57	;
16	17	57	;	57	17	58	;
17	18	58	;	58	18	59	;
18	19	59	;	59	19	60	;
19	20	60	;	60	20	61	;
20	21	61	;	61	21	62	;
21	22	62	;	62	22	63	;
22	23	63	;	63	23	64	;
23	24	64	;	64	24	65	;
24	25	65	;	65	25	66	;
25	26	66	;	66	26	67	;
26	27	67	;	67	27	68	;
27	28	68	;	68	28	69	;
28	29	69	;	69	29	70	;
29	30	70	;	70	30	71	;
30	31	71	;	71	31	72	;
31	32	72	;	72	32	73	;
32	33	73	;	73	33	74	;
33	34	74	;	74	34	75	;
34	35	75	;	75	35	76	;
35	36	76	;	76	36	77	;
36	37	77	;	77	37	78	;
37	38	78	;	78	38	79	;
38	39	79	;	79	39	80	;
39	40	80	;	80	40	81	;
40	41	81	;	81	41	82	;
42	43	83	;	83	43	84	;
43	44	84	;	84	44	85	;
44	45	85	;	85	45	86	;
45	46	86	;	86	46	87	;
46	47	87	;	87	47	88	;
47	48	88	;	88	48	89	;
48	49	89	;	89	49	90	;
49	50	90	;	90	50	91	;
50	51	91	;	91	51	92	;
51	52	92	;	92	52	93	;
52	53	93	;	93	53	94	;
53	54	94	;	94	54	95	;
54	55	95	;	95	55	96	;
55	56	96	;	96	56	97	;
56	57	97	;	97	57	98	;
57	58	98	;	98	58	99	;
58	59	99	;	99	59	100	;
59	60	100	;	100	60	101	;
60	61	101	;	101	61	102	;
61	62	102	;	102	62	103	;
62	63	103	;	103	63	104	;
63	64	104	;	104	64	105	;
64	65	105	;	105	65	106	;
65	66	106	;	106	66	107	;
66	67	107	;	107	67	108	;
67	68	108	;	108	68	109	;
68	69	109	;	109	69	110	;
69	70	110	;	110	70	111	;
70	71	111	;	111	71	112	;
71	72	112	;	112	72	113	;
72	73	113	;	113	73	114	;
73	74	114	;	114	74	115	;
74	75	115	;	115	75	116	;
75	76	116	;	116	76	117	;
76	77	117	;	117	77	118	;
77	78	118	;	118	78	119	;
78	79	119	;	119	79	120	;
79	80	120	;	120	80	121	;
80	81	121	;	121	81	122	;
81	82	122	;	122	82	123	;
83	84	124	;	124	84	125	;
84	85	125	;	125	85	126	;
85	86	126	;	126	86	127	;
86	87	127	;	127	87	128	;
87	88	128	;	128	88	129	;
88	89	129	;	129	89	130	;
89	90	130	;	130	90	131	;
90	91	131	;	131	91	132	;
91	92	132	;	132	92	133	;
92	93	133	;	133	93	134	;
93	94	134	;	134	94	135	;
94	95	135	;	135	95	136	;
95	96	136	;	136	96	137	;
96	97	137	;	137	97	138	;
97	98	138	;	138	98	139	;
98	99	139	;	139	99	140	;
99	100	140	;	140	100	141	;
100	101	141	;	141	101	142	;
101	102	142	;	142	102	143	;
102	103	143	;	143	103	144	;
103	104	144	;	144	104	145	;
104	105	145	;	145	105	146	;
105	106	146	;	146	106	147	;
106	107	147	;	147	107	148	;
107	108	148	;	148	108	149	;
108	109	149	;	149	109	150	;
109	110	150	;	150	110	151	;
110	111	151	;	151	111	152	;
111	112	152	;	152	112	153	;
112	113	153	;	153	113	154	;
113	114	154	;	154	114	155	;
114	115	155	;	155	115	156	;
115	116	156	;	156	116	157	;
116	117	157	;	157	117	158	;
117	118	158	;	158	118	159	;
118	119	159	;	159	119	160	;
119	120	160	;	160	120	161	;
120	121	161	;	161	121	162	;
121	122	162	;	162	122	163	;
122	123	163	;	163	123	164	;
124	125	165	;	165	125	166	;
125	126	166	;	166	126	167	;
126	127	167	;	167	127	168	;
127	128	168	;	168	128	169	;
128	129	169	;	169	129	170	;
129	130	170	;	170	130	171	;
130	131	171	;	171	131	172	;
131	132	172	;	172	132	173	;
132	133	173	;	173	133	174	;
133	134	174	;	174	134	175	;
134	135	175	;	175	135	176	;
135	136	176	;	176	136	177	;
136	137	177	;	177	137	178	;
137	138	178	;	178	138	179	;
138	139	179	;	179	139	180	;
139	140	180	;	180	140	181	;
140	141	181	;	181	141	182	;
141	142	182	;	182	142	183	;
142	143	183	;	183	143	184	;
143	144	184	;	184	144	185	;
144	145	185	;	185	145	186	;
145	146	186	;	186	146	187	;
146	147	187	;	187	147	188	;
147	148	188	;	188	148	189	;
148	149	189	;	189	149	190	;
149	150	190	;	190	150	191	;
150	151	191	;	191	151	192	;
151	152	192	;	192	152	193	;
152	153	193	;	193	153	194	;
153	154	194	;	194	154	195	;
154	155	195	;	195	155	196	;
155	156	196	;	196	156	197	;
156	157	197	;	197	157	198	;
157	158	198	;	198	158	199	;
158	159	199	;	199	159	200	;
159	160	200	;	200	160	201	;
160	161	201	;	201	161	202	;
161	162	202	;	202	162	203	;
162	163	203	;	203	163	204	;
163	164	204	;	204	164	205	];

L=123456;
climit=[1 0 0 L;42 0 L L;83 0 L L;124 0 L L;165 0 L L];

%charg=[41 10 0 0;
%205 -10 0 0];
%charg=[123 0 0 20];
charg=[41 0 0 1;
205 0 0 1];
%charg=[41 0 0 0.4;
%82 0 0 0.4;
%123 0 0 0.4;
%164 0 0 0.4;
%205 0 0 0.4];
end