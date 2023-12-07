--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-2.pgdg110+2)
-- Dumped by pg_dump version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)
SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: fast_food_nutrition_menu; Type: TABLE; Schema: public; Owner: postgres
--
CREATE DATABASE mcdonalds_health_db;
\c mcdonalds_health_db;

CREATE TABLE public.fast_food_nutrition_menu (
    id integer NOT NULL,
    "Company" text NOT NULL,
    "Item" text NOT NULL,
    "Calories" text,
    "CaloriesFromFat" text,
    "TotalFat(g)" text,
    "SaturatedFat(g)" text,
    "TransFat(g)" text,
    "Cholesterol(mg)" text,
    "Sodium(mg)" text,
    "Carbs(g)" text,
    "Fiber(g)" text,
    "Sugars(g)" text,
    "Protein(g)" text,
    "WeightWatchersPnts" text
);


ALTER TABLE public.fast_food_nutrition_menu OWNER TO postgres;

--
-- Name: fast_food_nutrition_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fast_food_nutrition_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fast_food_nutrition_menu_id_seq OWNER TO postgres;

--
-- Name: fast_food_nutrition_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fast_food_nutrition_menu_id_seq OWNED BY public.fast_food_nutrition_menu.id;


--
-- Name: fast_food_nutrition_menu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fast_food_nutrition_menu ALTER COLUMN id SET DEFAULT nextval('public.fast_food_nutrition_menu_id_seq'::regclass);


--
-- Data for Name: fast_food_nutrition_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fast_food_nutrition_menu (id, "Company", "Item", "Calories", "CaloriesFromFat", "TotalFat(g)", "SaturatedFat(g)", "TransFat(g)", "Cholesterol(mg)", "Sodium(mg)", "Carbs(g)", "Fiber(g)", "Sugars(g)", "Protein(g)", "WeightWatchersPnts") FROM stdin;
1	McDonald’s	Hamburger	250	80	9	3.5	0.5	25	520	31	2	6	12	247.5
2	McDonald’s	Cheeseburger	300	110	12	6	0.5	40	750	33	2	6	15	297
3	McDonald’s	Double Cheeseburger	440	210	23	11	1.5	80	1150	34	2	7	25	433
4	McDonald’s	McDouble	390	170	19	8	1	65	920	33	2	7	22	383
5	McDonald’s	 Quarter Pounder® with Cheese	510	230	26	12	1.5	90	1190	40	3	9	29	502
6	McDonald’s	Double Quarter Pounder® with Cheese	740	380	42	19	2.5	155	1380	40	3	9	48	720
7	McDonald’s	Big Mac®	540	260	29	10	1.5	75	1040	45	3	9	25	534
8	McDonald’s	Big N’ Tasty®	460	220	24	8	1.5	70	720	37	3	8	24	452
9	McDonald’s	Big N’ Tasty® with Cheese	510	250	28	11	1.5	85	960	38	3	8	27	502
10	McDonald’s	Angus Bacon & Cheese	790	350	39	17	2	145	2070	63	4	13	45	775
11	McDonald’s	Angus Deluxe	750	350	39	16	2	135	1700	61	4	10	40	736
12	McDonald’s	Angus Mushroom & Swiss	770	360	40	17	2	135	1170	59	4	8	44	751
13	McDonald’s	Filet-O-Fish®	380	170	18	3.5	0	40	640	38	2	5	15	373.5
14	McDonald’s	McChicken ®	360	150	16	3	0	35	830	40	2	5	14	354
15	McDonald’s	McRib ®	500	240	26	10	0	70	980	44	3	11	22	499
16	McDonald’s	Premium Grilled Chicken Classic Sandwich	360	80	9	2	0	65	820	41	4	8	27	343
17	McDonald’s	Premium Crispy Chicken Classic Sandwich	510	200	22	3.5	0	45	990	56	3	10	24	499.5
18	McDonald’s	Premium Grilled Chicken Club Sandwich	460	150	17	6	0	90	1040	43	4	9	35	440
19	McDonald’s	Premium Crispy Chicken Club Sandwich	620	260	29	7	0	70	1200	57	3	11	31	607
20	McDonald’s	Premium Grilled Chicken Ranch BLT Sandwich	380	90	10	3	0	75	1000	41	4	9	31	361
21	McDonald’s	Premium Crispy Chicken Ranch BLT Sandwich	540	210	23	4.5	0	55	1160	56	3	11	27	528.5
22	McDonald’s	Southern Style Crispy Chicken Sandwich	400	150	17	3	0	45	1030	39	1	6	24	385
23	McDonald’s	Ranch Snack Wrap® (Crispy)	340	150	17	4.5	0	30	810	33	1	2	14	332.5
24	McDonald’s	Ranch Snack Wrap® (Grilled)	270	90	10	4	0	45	830	26	1	2	18	258
25	McDonald’s	Honey Mustard Snack Wrap® (Crispy)	330	140	16	4.5	0	30	780	34	1	4	14	324.5
26	McDonald’s	Honey Mustard Snack Wrap® (Grilled)	260	80	9	3.5	0	45	800	27	1	4	18	249.5
27	McDonald’s	Chipotle BBQ Snack Wrap® (Crispy)	330	140	15	4.5	0	30	810	35	1	4	14	324.5
28	McDonald’s	Chipotle BBQ Snack Wrap® (Grilled)	260	80	9	3.5	0	45	830	28	1	5	18	250.5
29	McDonald’s	Angus Bacon & Cheese Snack Wrap	390	190	21	9	1	75	1080	28	1	4	21	382
30	McDonald’s	Angus Chipotle BBQ Bacon	800	350	39	18	2	145	2020	66	4	16	45	789
31	McDonald’s	Angus Chipotle BBQ Bacon Snack Wrap	400	190	22	10	1	75	1060	30	1	6	21	395
32	McDonald’s	Angus Deluxe Snack Wrap	410	220	25	10	1.5	75	990	27	2	3	20	403
33	McDonald’s	Angus Mushroom & Swiss Snack Wrap	430	230	26	10	1.5	75	730	27	2	2	22	420
34	McDonald’s	Mac Snack Wrap	330	170	19	7	1	45	690	26	1	3	15	325
35	McDonald’s	Small French Fries	230	100	11	1.5	0	0	160	29	3	0	3	228.5
36	McDonald’s	Medium French Fries	380	170	19	2.5	0	0	270	48	5	0	4	378.5
37	McDonald’s	Large French Fries	500	220	25	3.5	0	0	350	63	6	0	6	497.5
38	McDonald’s	Ketchup Packet	15	0	0	0	0	0	110	3	0	2	0	17
39	McDonald’s	Salt Packet	0	0	0	0	0	0	270	0	0	0	0	0
40	McDonald’s	Chicken McNuggets® (4 piece)	190	110	12	2	0	25	360	12	1	0	9	183
41	McDonald’s	Chicken McNuggets® (6 piece)	280	160	18	3	0	40	540	18	1	0	13	270
42	McDonald’s	Chicken McNuggets® (10 piece)	470	270	30	5	0	65	900	30	2	0	22	453
43	McDonald’s	Barbeque Sauce	50	0	0	0	0	0	260	12	0	10	0	60
44	McDonald’s	Honey	50	0	0	0	0	0	0	12	0	11	0	61
45	McDonald’s	Hot Mustard Sauce	60	20	2.5	0	0	5	250	9	2	6	1	65
46	McDonald’s	Sweet ‘N Sour Sauce	50	0	0	0	0	0	150	12	0	10	0	60
47	McDonald’s	Chicken Selects® Premium Breast Strips (3 pc)	400	210	24	3.5	0	50	1010	23	0	0	23	380.5
48	McDonald’s	Chicken Selects® Premium Breast Strips (5 pc)	660	360	40	6	0	85	1680	39	0	0	38	628
49	McDonald’s	Spicy Buffalo Sauce	60	50	6	1	0	0	800	1	1	0	0	61
50	McDonald’s	Creamy Ranch Sauce	170	160	18	3	0	10	270	2	0	1	0	174
51	McDonald’s	Tangy Honey Mustard Sauce	60	20	2	0	0	5	140	10	0	8	0	68
52	McDonald’s	Southwestern Chipotle Barbeque Sauce	60	0	0	0	0	0	210	15	1	11	0	71
53	McDonald’s	Premium Southwest Salad with Grilled Chicken	320	80	9	3	0	70	960	30	6	11	30	304
54	McDonald’s	Premium Southwest Salad with Crispy Chicken	430	180	20	4	0	55	920	38	6	12	26	420
55	McDonald’s	Premium Southwest Salad (without chicken)	140	40	4.5	2	0	10	150	20	6	6	6	142
56	McDonald’s	Premium Bacon Ranch Salad with Grilled Chicken	260	90	9	4	0	90	1010	12	3	5	33	236
57	McDonald’s	Premium Bacon Ranch Salad with Crispy Chicken	370	180	20	6	0	75	970	20	3	6	29	353
58	McDonald’s	Premium Bacon Ranch Salad (without chicken)	140	70	7	3.5	0	25	300	10	3	4	9	138.5
59	McDonald’s	Premium Caesar Salad with Grilled Chicken	220	60	6	3	0	75	890	12	3	5	30	198
60	McDonald’s	Premium Caesar Salad with Crispy Chicken	330	150	17	4.5	0	60	840	20	3	6	26	314.5
61	McDonald’s	Premium Caesar Salad (without chicken)	90	35	4	2.5	0	10	180	9	3	4	7	89.5
62	McDonald’s	Side Salad	20	0	0	0	0	0	10	4	1	2	1	21
63	McDonald’s	Butter Garlic Croutons	60	15	1.5	0	0	0	140	10	1	0	2	58
64	McDonald’s	Snack Size Fruit & Walnut Salad	210	70	8	1.5	0	5	60	31	2	25	4	232.5
65	McDonald’s	Salad Dressings												
66	McDonald’s	Newman’s Own® Creamy Southwest Dressing	100	50	6	1	0	20	340	11	0	3	1	103
67	McDonald’s	Newman’s Own® Creamy Caesar Dressing	190	170	18	3.5	0	20	500	4	0	2	2	193.5
68	McDonald’s	Newman’s Own® Low Fat Balsamic Vinaigrette	40	25	3	0	0	0	730	4	0	3	0	43
69	McDonald’s	Newman’s Own® Low Fat Family Recipe Italian Dressing	60	20	2.5	0	0	0	730	8	0	1	1	60
70	McDonald’s	Newman’s Own® Ranch Dressing	170	130	15	2.5	0	20	530	9	0	4	1	175.5
71	McDonald’s	Egg McMuffin®	300	110	12	5	0	260	820	30	2	3	18	290
72	McDonald’s	Sausage McMuffin®	370	200	22	8	0	45	850	29	2	2	14	366
73	McDonald’s	Sausage McMuffin® with Egg	450	250	27	10	0	285	920	30	2	2	21	441
74	McDonald’s	English Muffin	160	30	3	0.5	0	0	280	27	2	2	5	157.5
75	McDonald’s	Bacon, Egg & Cheese Biscuit (Regular Size Biscuit)	420	210	23	12	0	235	1160	37	2	3	15	420
76	McDonald’s	Bacon, Egg & Cheese Biscuit (Large Size Biscuit)	480	240	27	12	0	235	1270	43	3	4	15	481
77	McDonald’s	Sausage Biscuit with Egg (Regular Size Biscuit)	510	290	33	14	0	250	1170	36	2	2	18	508
78	McDonald’s	Sausage Biscuit with Egg (Large Size Biscuit)	570	330	37	15	0	250	1280	42	3	3	18	570
79	McDonald’s	Sausage Biscuit (Regular Size Biscuit)	430	240	27	12	0	30	1080	34	2	2	11	433
80	McDonald’s	Sausage Biscuit (Large Size Biscuit)	480	280	31	13	0	30	1190	39	3	3	11	485
81	McDonald’s	Southern Style Chicken Biscuit (Regular Size Biscuit)	410	180	20	8	0	30	1180	41	2	3	17	404
82	McDonald’s	Southern Style Chicken Biscuit (Large Size Biscuit)	470	220	24	9	0	30	1290	46	3	4	17	466
83	McDonald’s	Steak, Egg & Cheese Bagel	660	300	33	12	1	300	1580	56	3	7	33	646
84	McDonald’s	Bacon, Egg & Cheese McGriddles®	420	160	18	8	0	240	1110	48	2	15	15	428
85	McDonald’s	Sausage, Egg & Cheese McGriddles®	560	290	32	12	0	265	1360	48	2	15	20	567
86	McDonald’s	Sausage McGriddles®	420	200	22	8	0	35	1030	44	2	15	11	432
87	McDonald’s	Big Breakfast® (Regular Size Biscuit)	740	430	48	17	0	555	1560	51	3	3	28	732
88	McDonald’s	Big Breakfast® (Large Size Biscuit)	800	470	52	18	0	555	1680	56	4	3	28	793
89	McDonald’s	Big Breakfast with Hotcakes (Regular Size Biscuit)	1090	510	56	19	0	575	2150	111	6	17	36	1090
90	McDonald’s	Big Breakfast with Hotcakes (Large Size Biscuit)	1150	540	60	20	0	575	2260	116	7	17	36	1151
91	McDonald’s	Sausage Burrito	300	140	16	7	0	115	830	26	1	2	12	297
92	McDonald’s	McSkillet™ Burrito with Sausage	610	320	36	14	0.5	410	1390	44	3	4	27	601
93	McDonald’s	Hotcakes	350	80	9	2	0	20	590	60	3	14	8	358
94	McDonald’s	Hotcakes and Sausage	520	210	24	7	0	50	930	61	3	14	15	526
95	McDonald’s	Hotcake Syrup	180	0	0	0	0	0	20	45	0	32	0	212
96	McDonald’s	Whipped Margarine (1 pat)	40	40	4.5	1.5	0	0	55	0	0	0	0	41.5
97	McDonald’s	Hash Brown	150	80	9	1.5	0	0	310	15	2	0	1	150.5
98	McDonald’s	Grape Jam	35	0	0	0	0	0	0	9	0	9	0	44
99	McDonald’s	Strawberry Preserves	35	0	0	0	0	0	0	9	0	9	0	44
100	McDonald’s	Bacon, Egg & Cheese Bagel	560	240	27	9	0.5	260	1300	56	3	7	24	552
101	McDonald’s	Fruit & Maple Oatmeal	290	40	4.5	2	0	10	160	57	5	32	5	319
102	McDonald’s	Fruit & Maple Oatmeal without Brown Sugar	260	40	4.5	2	0	10	115	48	5	18	5	275
103	McDonald’s	Hamburger Happy Meal	475		16	5.5 g	0	40	690	62	2	20	22	
104	McDonald’s	4 Piece Chicken McNuggets Happy Meal	395		17	3.5	0	35	510	41	1	14	19	
105	McDonald’s	6 Piece Chicken McNuggets® Happy Meal	475		22	4.5	0	50	680	46	2	14	24	
106	McDonald’s	Fruit ‘n Yogurt Parfait (7 oz)	160	20	2	1	0	5	85	31	1	21	4	178
107	McDonald’s	Low Fat Caramel Dip	70	5	0.5	0	0	5	35	15	0	9	0	79
108	McDonald’s	Vanilla Reduced Fat Ice Cream Cone	150	35	3.5	2	0	15	60	24	0	18	4	166
109	McDonald’s	Kiddie Cone	45	10	1	0.5	0	5	20	8	0	6	1	50.5
110	McDonald’s	Strawberry Sundae	280	60	6	4	0	25	95	49	1	45	6	323
111	McDonald’s	Hot Caramel Sundae	340	70	8	5	0	30	160	60	1	44	7	382
112	McDonald’s	Hot Fudge Sundae	330	90	10	7	0	25	180	54	2	48	8	377
113	McDonald’s	Peanuts (for Sundaes)	45	30	3.5	0.5	0	0	0	2	1	0	2	43.5
114	McDonald’s	McFlurry® with M&M’S® Candies (12 fl oz cup)	710	230	25	16	1	60	220	105	4	97	15	808
115	McDonald’s	McFlurry® with OREO® Cookies (12 fl oz cup)	580	170	19	10	1	50	320	89	3	73	13	650
116	McDonald’s	Baked Hot Apple Pie	250	110	13	7	0	0	170	32	4	13	2	268
117	McDonald’s	Cinnamon Melts	460	170	19	9	0	15	370	66	3	32	6	495
118	McDonald’s	McDonaldland® Cookies	260	70	8	2.5	0	0	300	43	1	13	4	271.5
119	McDonald’s	Chocolate Chip Cookie	160	70	8	3.5	0	10	90	21	1	15	2	176.5
120	McDonald’s	Oatmeal Raisin Cookie	150	50	6	2.5	0	10	135	22	1	13	2	163.5
121	McDonald’s	Sugar Cookie	160	60	7	3	0	5	120	21	0	11	2	172
122	McDonald’s	Apple Dippers with Low Fat Caramel Dip	100	5	0.5	0	0	5	35	23	0	15	0	115
123	McDonald’s	Chocolate McCafé® Shake (12 fl oz cup)	580	150	17	10	1	50	240	94	1	77	11	656
124	McDonald’s	Chocolate McCafé® Shake (16 fl oz cup)	720	180	20	12	1	60	300	119	1	98	15	815
125	McDonald’s	Chocolate McCafé® Shake (22 fl oz cup)	880	220	24	15	1.5	75	370	147	1	121	18	998
126	McDonald’s	Chocolate Triple Thick® Shake (12 fl oz cup)	440	90	10	6	0.5	40	190	76	1	63	10	499
127	McDonald’s	Chocolate Triple Thick® Shake (16 fl oz cup)	580	120	14	8	1	50	250	102	1	84	13	659
128	McDonald’s	Chocolate Triple Thick® Shake (21 fl oz cup)	770	160	18	11	1	70	330	134	1	111	18	874
129	McDonald’s	Chocolate Triple Thick® Shake (32 fl oz cup)	1160	240	27	16	2	100	510	203	2	168	27	1317
130	McDonald’s	Snack Size McFlurry® with M&M’S® Candies	430	140	16	10	0.5	35	130	64	2	59	9	490
131	McDonald’s	Snack Size McFlurry® with OREO® Cookies	340	100	12	6	0	30	200	53	2	43	8	381
132	McDonald’s	Strawberry McCafé® Shake (12 fl oz cup)	570	150	17	10	1	50	170	92	0	79	11	648
133	McDonald’s	Strawberry McCafé® Shake (16 fl oz cup)	710	180	20	12	1	65	210	116	0	100	14	808
134	McDonald’s	Strawberry McCafé® Shake (22 fl oz cup)	860	220	24	15	1.5	75	260	144	0	124	18	981
135	McDonald’s	Strawberry Triple Thick® Shake (12 fl oz cup)	420	90	10	6	0.5	40	130	73	0	63	10	479
136	McDonald’s	Strawberry Triple Thick® Shake (16 fl oz cup)	560	120	13	8	1	50	170	97	0	84	13	639
137	McDonald’s	Strawberry Triple Thick® Shake (21 fl oz cup)	740	160	18	11	1	70	230	128	0	111	17	845
138	McDonald’s	Strawberry Triple Thick® Shake (32 fl oz cup)	1110	240	26	16	2	100	350	194	0	168	25	1269
139	McDonald’s	Vanilla McCafé® Shake (12 fl oz cup)	540	150	16	10	1	45	170	88	0	64	10	604
140	McDonald’s	Vanilla McCafé® Shake (16 fl oz cup)	680	180	20	12	1	60	220	111	0	82	14	760
141	McDonald’s	Vanilla McCafé® Shake (22 fl oz cup)	830	210	24	14	1.5	75	270	138	0	103	17	930
142	McDonald’s	Vanilla Triple Thick Shake® (32 fl oz cup)	1110	240	26	16	2	100	370	193	0	145	25	1246
143	McDonald’s	Vanilla Triple Thick® Shake (12 fl oz cup)	420	90	10	6	0.5	40	140	72	0	54	9	471
144	McDonald’s	Vanilla Triple Thick® Shake (16 fl oz cup)	550	120	13	8	1	50	190	96	0	72	13	617
145	McDonald’s	Vanilla Triple Thick® Shake (21 fl oz cup)	740	160	18	11	1	70	250	128	0	96	17	830
146	McDonald’s	1% Low Fat Milk Jug	100	20	2.5	1.5	0	10	125	12	0	12	8	105.5
147	McDonald’s	1% Low Fat Chocolate Milk Jug	170	25	3	1.5	0	5	150	26	1	25	9	187.5
148	McDonald’s	Minute Maid® 100% Apple Juice Box	100	0	0	0	0	0	15	23	0	22	0	122
149	McDonald’s	Dasani® Water	0	0	0	0	0	0	0	0	0	0	0	0
150	McDonald’s	Minute Maid® Orange Juice (Small)	150	0	0	0	0	0	0	30	0	30	2	178
151	McDonald’s	Minute Maid® Orange Juice (Medium)	190	0	0	0	0	0	0	39	0	39	3	226
152	McDonald’s	Minute Maid® Orange Juice (Large)	280	0	0	0	0	0	5	58	0	58	4	334
153	McDonald’s	Coca-Cola® Classic (Child)	110	0	0	0	0	0	5	29	0	29	0	139
154	McDonald’s	Coca-Cola® Classic (Small)	150	0	0	0	0	0	10	40	0	40	0	190
155	McDonald’s	Coca-Cola® Classic (Medium)	210	0	0	0	0	0	15	58	0	58	0	268
156	McDonald’s	Coca-Cola® Classic (Large)	310	0	0	0	0	0	20	86	0	86	0	396
157	McDonald’s	Diet Coke® (Child)	0	0	0	0	0	0	15	0	0	0	0	0
158	McDonald’s	Diet Coke® (Small)	0	0	0	0	0	0	20	0	0	0	0	0
159	McDonald’s	Diet Coke® (Medium)	0	0	0	0	0	0	30	0	0	0	0	0
160	McDonald’s	Diet Coke® (Large)	0	0	0	0	0	0	45	0	0	0	0	0
161	McDonald’s	Sprite® (Child)	110	0	0	0	0	0	30	28	0	28	0	138
162	McDonald’s	Sprite® (Small)	150	0	0	0	0	0	40	39	0	39	0	189
163	McDonald’s	Sprite® (Medium)	210	0	0	0	0	0	55	56	0	56	0	266
164	McDonald’s	Sprite® (Large)	310	0	0	0	0	0	80	83	0	83	0	393
165	McDonald’s	Hi-C® Orange Lavaburst (Child)	120	0	0	0	0	0	0	32	0	32	0	152
166	McDonald’s	Hi-C® Orange Lavaburst (Small)	160	0	0	0	0	0	5	44	0	44	0	204
167	McDonald’s	Hi-C® Orange Lavaburst (Medium)	240	0	0	0	0	0	10	64	0	64	0	304
168	McDonald’s	Hi-C® Orange Lavaburst (Large)	350	0	0	0	0	0	10	94	0	94	0	444
169	McDonald’s	POWERade® Mountain Blast (Child)	70	0	0	0	0	0	65	20	0	16	0	86
170	McDonald’s	POWERade® Mountain Blast (Small)	100	0	0	0	0	0	85	27	0	21	0	121
171	McDonald’s	POWERade® Mountain Blast (Medium)	150	0	0	0	0	0	130	39	0	31	0	181
172	McDonald’s	POWERade® Mountain Blast (Large)	220	0	0	0	0	0	190	58	0	46	0	266
173	McDonald’s	Iced Tea (Child)	0	0	0	0	0	0	5	0	0	0	0	0
174	McDonald’s	Iced Tea (Small)	0	0	0	0	0	0	10	0	0	0	0	0
175	McDonald’s	Iced Tea (Medium)	0	0	0	0	0	0	15	0	0	0	0	0
176	McDonald’s	Iced Tea (Large)	0	0	0	0	0	0	20	1	0	0	0	0
177	McDonald’s	Coffee (Small)	0	0	0	0	0	0	0	0	0	0	0	0
178	McDonald’s	Coffee (Large)	0	0	0	0	0	0	0	0	0	0	0	0
179	McDonald’s	Coffee Cream	20	20	2	1.5	0	10	15	0	0	0	0	21.5
180	McDonald’s	Sugar Packet	15	0	0	0	0	0	0	4	0	4	0	19
181	McDonald’s	EQUAL® 0\nCalorie Sweetener	0	0	0	0	0	0	0	1	0	1	0	1
182	McDonald’s	SPLENDA® No\nCalorie Sweetener	0	0	0	0	0	0	0	1	0	1	0	1
183	McDonald’s	Iced Coffee– Caramel (Small)	130	50	5	3.5	0	20	80	21	0	20	1	152.5
184	McDonald’s	Iced Coffee– Caramel (Medium)	190	70	8	5	0	30	115	27	0	27	2	220
185	McDonald’s	Iced Coffee– Caramel (Large)	270	100	11	7	0	40	160	41	0	41	2	316
186	McDonald’s	Iced Coffee– Hazelnut (Small)	130	50	5	3.5	0	20	40	21	0	21	1	153.5
187	McDonald’s	Iced Coffee– Hazelnut (Medium)	190	70	8	5	0	30	60	29	0	29	2	222
188	McDonald’s	Iced Coffee– Hazelnut (Large)	270	100	11	7	0	40	85	43	0	43	2	318
189	McDonald’s	Iced Coffee– Regular (Small)	140	50	5	3.5	0	20	40	22	0	22	1	164.5
190	McDonald’s	Iced Coffee– Regular (Medium)	200	70	8	5	0	30	60	30	0	30	2	233
191	McDonald’s	Iced Coffee– Regular (Large)	280	100	11	7	0	40	85	45	0	45	2	330
192	McDonald’s	Iced Coffee– Vanilla (Small)	130	50	5	3.5	0	20	40	21	0	21	1	153.5
193	McDonald’s	Iced Coffee– Vanilla (Medium)	190	70	8	5	0	30	60	29	0	28	2	221
194	McDonald’s	Iced Coffee– Vanilla (Large)	270	100	11	7	0	40	80	43	0	43	2	318
195	McDonald’s	Iced Coffee with Sugar Free Vanilla Syrup (Small)	60	50	5	3.5	0	20	70	8	0	1	1	63.5
196	McDonald’s	Iced Coffee with Sugar Free Vanilla Syrup (Medium)	90	70	8	5	0	30	100	11	0	2	2	95
197	McDonald’s	Iced Coffee with Sugar Free Vanilla Syrup (Large)	120	100	11	7	0	40	140	16	0	2	2	127
198	McDonald’s	Sweet Tea (Child)	110	0	0	0	0	0	5	27	0	27	0	137
199	McDonald’s	Sweet Tea (Large)	280	0	0	0	0	0	15	69	0	69	1	348
200	McDonald’s	Sweet Tea (Medium)	180	0	0	0	0	0	10	45	0	45	1	224
201	McDonald’s	Sweet Tea (Small)	150	0	0	0	0	0	10	36	0	36	1	185
202	McDonald’s	Nonfat Cappuccino (Small)	60	0	0	0	0	5	85	9	0	9	6	63
203	McDonald’s	Nonfat Cappuccino (Medium)	80	0	0	0	0	5	110	12	0	12	8	84
204	McDonald’s	Nonfat Cappuccino (Large)	90	0	0	0	0	5	130	13	0	13	9	94
205	McDonald’s	Nonfat Latte (Small)	90	0	0	0	0	5	115	13	0	13	9	94
206	McDonald’s	Nonfat Latte (Medium)	110	0	0	0	0	5	140	15	0	15	10	115
207	McDonald’s	Nonfat Latte (Large)	120	0	0	0	0	5	160	18	0	18	12	126
208	McDonald’s	Nonfat Caramel Cappuccino (Small)	150	0	0	0	0	5	120	33	0	32	5	177
209	McDonald’s	Nonfat Caramel Cappuccino (Medium)	190	0	0	0	0	5	150	41	0	41	6	225
210	McDonald’s	Nonfat Caramel Cappuccino (Large)	230	0	0	0	0	5	180	49	0	49	7	272
211	McDonald’s	Nonfat Caramel Latte (Small)	170	0	0	0	0	5	150	36	0	36	7	199
212	McDonald’s	Nonfat Caramel Latte (Medium)	220	0	0	0	0	5	180	45	0	45	9	256
213	McDonald’s	Nonfat Caramel Latte (Large)	260	0	0	0	0	5	220	53	0	53	10	303
214	McDonald’s	Nonfat Hazelnut Cappuccino (Small)	150	0	0	0	0	5	70	34	0	34	5	179
215	McDonald’s	Nonfat Hazelnut Cappuccino (Medium)	190	0	0	0	0	5	90	43	0	43	6	227
216	McDonald’s	Nonfat Hazelnut Cappuccino (Large)	230	0	0	0	0	5	100	51	0	51	7	274
217	McDonald’s	Nonfat Hazelnut Latte (Small)	180	0	0	0	0	5	95	37	0	37	7	210
218	McDonald’s	Nonfat Hazelnut Latte (Medium)	220	0	0	0	0	5	115	46	0	46	9	257
219	McDonald’s	Nonfat Hazelnut Latte (Large)	260	0	0	0	0	5	135	55	0	55	10	305
220	McDonald’s	Nonfat Vanilla Cappuccino (Small)	150	0	0	0	0	5	70	34	0	34	5	179
221	McDonald’s	Nonfat Vanilla Cappuccino (Medium)	190	0	0	0	0	5	90	42	0	42	6	226
222	McDonald’s	Nonfat Vanilla Cappuccino (Large)	230	0	0	0	0	5	100	51	0	51	7	274
223	McDonald’s	Nonfat Vanilla Latte (Small)	180	0	0	0	0	5	95	37	0	37	7	210
224	McDonald’s	Nonfat Vanilla Latte (Medium)	220	0	0	0	0	5	115	46	0	46	9	257
225	McDonald’s	Nonfat Vanilla Latte (Large)	260	0	0	0	0	5	135	55	0	55	10	305
226	McDonald’s	Nonfat Cappuccino with Sugar Free Vanilla Syrup (Small)	50	0	0	0	0	5	100	15	0	8	5	53
227	McDonald’s	Nonfat Cappuccino with Sugar Free Vanilla Syrup (Medium)	70	0	0	0	0	5	130	19	0	10	7	73
228	McDonald’s	Nonfat Cappuccino with Sugar Free Vanilla Syrup (Large)	80	0	0	0	0	5	150	22	0	11	8	83
229	McDonald’s	Nonfat Latte with Sugar Free Vanilla Syrup (Small)	80	0	0	0	0	5	130	18	0	11	7	84
230	McDonald’s	Nonfat Latte with Sugar Free Vanilla Syrup (Medium)	90	0	0	0	0	5	160	22	0	13	9	94
231	McDonald’s	Nonfat Latte with Sugar Free Vanilla Syrup (Large)	110	0	0	0	0	5	190	27	0	15	11	114
232	McDonald’s	Mocha with Nonfat Milk (Small)	240	45	5	3	0	5	130	41	0	34	7	270
233	McDonald’s	Mocha with Nonfat Milk (Medium)	280	50	6	3.5	0	10	160	50	0	42	8	317.5
234	McDonald’s	Mocha with Nonfat Milk (Large)	330	50	6	3.5	0	10	190	58	0	50	10	373.5
235	McDonald’s	Hot Chocolate with Nonfat Milk (Small)	250	45	5	3	0	10	140	43	0	37	8	282
236	McDonald’s	Hot Chocolate with Nonfat Milk (Medium)	310	50	6	3.5	0	10	190	55	0	47	11	349.5
237	McDonald’s	Hot Chocolate with Nonfat Milk (Large)	390	50	6	3.5	0	10	250	68	0	59	16	436.5
238	McDonald’s	Iced Nonfat Latte (Small)	50	0	0	0	0	5	70	7	0	7	5	52
239	McDonald’s	Iced Nonfat Latte (Medium)	60	0	0	0	0	5	90	9	0	9	6	63
240	McDonald’s	Iced Nonfat Latte (Large)	70	0	0	0	0	5	105	11	0	11	7	74
241	McDonald’s	Iced Nonfat Caramel Latte (Small)	140	0	0	0	0	0	105	30	0	30	3	167
242	McDonald’s	Iced Nonfat Caramel Latte (Medium)	150	0	0	0	0	5	120	32	0	32	5	177
243	McDonald’s	Iced Nonfat Caramel Latte (Large)	190	0	0	0	0	5	150	40	0	40	6	224
244	McDonald’s	Iced Nonfat Hazelnut Latte (Small)	140	0	0	0	0	0	50	32	0	32	3	169
245	McDonald’s	Iced Nonfat Hazelnut Latte (Medium)	150	0	0	0	0	5	70	33	0	33	5	178
246	McDonald’s	Iced Nonfat Hazelnut Latte (Large)	190	0	0	0	0	5	80	42	0	42	6	226
247	McDonald’s	Iced Nonfat Vanilla Latte (Small)	140	0	0	0	0	0	50	31	0	31	3	168
248	McDonald’s	Iced Nonfat Vanilla Latte (Medium)	150	0	0	0	0	5	70	33	0	33	5	178
249	McDonald’s	Iced Nonfat Vanilla Latte (Large)	190	0	0	0	0	5	85	41	0	41	6	225
250	McDonald’s	Iced Nonfat Latte with Sugar Free Vanilla Syrup (Small)	40	0	0	0	0	0	85	13	0	5	4	41
251	McDonald’s	Iced Nonfat Latte with Sugar Free Vanilla Syrup (Medium)	50	0	0	0	0	5	100	14	0	6	5	51
252	McDonald’s	Iced Nonfat Latte with Sugar Free Vanilla Syrup (Large)	60	0	0	0	0	5	130	19	0	8	6	62
253	McDonald’s	Iced Mocha with Nonfat Milk (Medium)	270	70	8	4.5	0	10	140	43	0	35	7	302.5
254	McDonald’s	Iced Nonfat Caramel Mocha (Large)	300	60	6	4	0	10	230	49	0	45	11	338
255	McDonald’s	Iced Nonfat Caramel Mocha (Medium)	240	60	6	4	0	10	190	37	0	34	9	269
256	McDonald’s	Iced Nonfat Caramel Mocha (Small)	200	50	6	4	0	10	140	29	0	26	6	224
257	McDonald’s	Nonfat Caramel Mocha (Large)	280	35	4	2.5	0	10	260	49	0	46	12	316.5
258	McDonald’s	Nonfat Caramel Mocha (Medium)	240	35	4	2.5	0	5	200	41	0	38	9	271.5
259	McDonald’s	Nonfat Caramel Mocha (Small)	200	35	4	2.5	0	5	170	34	0	31	8	225.5
260	McDonald’s	McCafe Coffees – Whole Milk												
261	McDonald’s	Cappuccino (Small)	120	60	7	4	0	20	85	9	0	9	6	127
262	McDonald’s	Cappuccino (Medium)	140	70	8	4.5	0	25	105	11	0	11	8	147.5
263	McDonald’s	Cappuccino (Large)	180	90	10	6	0	30	130	13	0	13	9	190
264	McDonald’s	Latte (Small) 	150	70	8	4.5	0	25	105	11	0	11	8	157.5
265	McDonald’s	Latte (Medium)	180	90	10	6	0	30	130	13	0	13	10	189
266	McDonald’s	Latte (Large)	210	100	11	7	0	35	150	16	0	16	11	222
267	McDonald’s	Caramel Cappuccino (Small)	200	45	5	3	0	15	125	32	0	32	5	230
268	McDonald’s	Caramel Cappuccino (Medium)	240	50	6	3.5	0	20	150	41	0	40	6	277.5
269	McDonald’s	Caramel Cappuccino (Large)	290	70	8	4.5	0	25	190	49	0	49	8	335.5
270	McDonald’s	Caramel Latte (Small)	230	60	7	4	0	20	140	35	0	35	7	262
271	McDonald’s	Caramel Latte (Medium)	280	70	8	4.5	0	25	170	43	0	43	8	319.5
272	McDonald’s	Caramel Latte (Large)	330	80	9	5	0	30	210	52	0	51	9	377
273	McDonald’s	Hazelnut Cappuccino (Small)	200	45	5	3	0	15	70	34	0	34	5	232
274	McDonald’s	Hazelnut Cappuccino (Medium)	240	50	6	3.5	0	20	85	42	0	42	6	279.5
275	McDonald’s	Hazelnut Cappuccino (Large)	290	70	8	4.5	0	25	105	51	0	51	7	338.5
276	McDonald’s	Hazelnut Latte (Small)	230	60	7	4	0	20	90	36	0	36	7	263
277	McDonald’s	Hazelnut Latte (Medium)	280	70	8	4.5	0	25	110	45	0	45	8	321.5
278	McDonald’s	Hazelnut Latte (Large)	330	80	9	5	0	30	130	53	0	53	9	379
279	McDonald’s	Vanilla Cappuccino (Small)	200	45	5	3	0	15	70	34	0	34	5	232
280	McDonald’s	Vanilla Cappuccino (Medium)	240	50	6	3.5	0	20	85	42	0	42	6	279.5
281	McDonald’s	Vanilla Cappuccino (Large)	290	70	8	4.5	0	25	105	51	0	51	7	338.5
282	McDonald’s	Vanilla Latte (Small)	230	60	7	4	0	20	90	36	0	36	7	263
283	McDonald’s	Vanilla Latte (Medium)	280	70	8	4.5	0	25	110	44	0	44	8	320.5
284	McDonald’s	Vanilla Latte (Large)	330	80	9	5	0	30	130	53	0	53	9	379
285	McDonald’s	Cappuccino with Sugar Free Vanilla Syrup (Small)	100	50	5	3	0	15	105	15	0	7	5	105
286	McDonald’s	Cappuccino with Sugar Free Vanilla Syrup (Medium)	120	60	6	3.5	0	20	130	18	0	9	6	126.5
287	McDonald’s	Cappuccino with Sugar Free Vanilla Syrup (Large)	150	70	8	4.5	0	25	160	22	0	11	8	157.5
288	McDonald’s	Latte with Sugar Free Vanilla Syrup (Small)	130	60	7	4	0	20	125	17	0	10	7	137
289	McDonald’s	Latte with Sugar Free Vanilla Syrup (Medium)	160	70	8	5	0	25	150	21	0	11	8	168
290	McDonald’s	Latte with Sugar Free Vanilla Syrup (Large)	180	90	10	6	0	30	180	25	0	13	10	189
291	McDonald’s	Mocha (Small)	280	100	11	6	0	20	125	40	0	33	6	313
292	McDonald’s	Mocha (Medium)	330	110	12	7	0	25	150	48	0	41	7	371
293	McDonald’s	Mocha (Large)	400	130	14	8	0.5	30	190	58	0	49	10	447
294	McDonald’s	Hot Chocolate (Small)	300	110	12	7	0	25	135	41	0	35	8	334
295	McDonald’s	Hot Chocolate (Medium)	380	130	15	9	0.5	30	170	53	0	45	10	424
296	McDonald’s	Hot Chocolate (Large)	460	160	18	10	0.5	40	220	63	0	54	13	511
297	McDonald’s	Iced Latte (Small)	80	40	4.5	2.5	0	15	65	6	0	6	4	84.5
298	McDonald’s	Iced Latte (Medium)	100	50	6	3.5	0	15	80	8	0	8	6	105.5
299	McDonald’s	Iced Latte (Large)	140	70	8	4.5	0	25	105	10	0	10	7	147.5
300	McDonald’s	Iced Caramel Latte (Small)	160	25	3	1.5	0	10	100	29	0	29	3	187.5
301	McDonald’s	Iced Caramel Latte (Medium)	180	40	4.5	2.5	0	15	120	31	0	31	4	209.5
302	McDonald’s	Iced Caramel Latte (Large)	230	50	6	3.5	0	15	150	40	0	40	6	267.5
303	McDonald’s	Iced Hazelnut Latte (Small)	160	25	3	1.5	0	10	45	31	0	31	3	189.5
304	McDonald’s	Iced Hazelnut Latte (Medium)	180	40	4.5	2.5	0	15	65	33	0	33	4	211.5
305	McDonald’s	Iced Hazelnut Latte (Large)	230	50	6	3.5	0	15	85	41	0	41	6	268.5
306	McDonald’s	Iced Vanilla Latte (Small)	160	25	3	1.5	0	10	45	31	0	31	3	189.5
307	McDonald’s	Iced Vanilla Latte (Medium)	190	40	4.5	2.5	0	15	70	33	0	33	5	220.5
308	McDonald’s	Iced Vanilla Latte (Large)	230	50	6	3.5	0	15	85	41	0	41	6	268.5
309	McDonald’s	Iced Latte with Sugar Free Vanilla Syrup (Small)	60	30	3	2	0	10	80	12	0	4	3	63
310	McDonald’s	Iced Latte with Sugar Free Vanilla Syrup (Medium)	90	40	5	3	0	15	105	14	0	6	5	94
311	McDonald’s	Iced Latte with Sugar Free Vanilla Syrup (Large)	110	50	6	3.5	0	15	130	19	0	8	6	115.5
312	McDonald’s	Iced Mocha (Medium)	310	120	13	8	0	25	140	42	0	35	7	346
313	McDonald’s	Caramel Mocha (Large)	360	130	14	8	0.5	35	220	47	0	46	10	404
314	McDonald’s	Caramel Mocha (Medium)	290	100	12	7	0	25	180	39	0	38	8	327
315	McDonald’s	Caramel Mocha (Small)	250	90	11	6	0	25	150	33	0	31	7	280
316	McDonald’s	Iced Caramel Mocha (Large)	380	140	16	9	0.5	35	210	48	0	46	10	425
317	McDonald’s	Iced Caramel Mocha (Medium)	300	120	14	8	0	30	160	36	0	33	8	333
318	McDonald’s	Iced Caramel Mocha (Small)	240	100	12	7	0	25	130	29	0	26	6	267
319	McDonald’s	Frappe Caramel (Small)	450	180	20	13	1	55	135	61	0	57	6	514
320	McDonald’s	Frappe Caramel (Medium)	550	220	24	15	1	70	160	76	0	71	8	628
321	McDonald’s	Frappe Caramel (Large)	680	260	29	18	1.5	85	200	94	0	88	10	776
322	McDonald’s	Frappe Mocha (Small)	450	180	20	13	1	55	130	62	1	56	7	512
323	McDonald’s	Frappe Mocha (Medium)	560	210	24	15	1	65	160	78	1	70	8	637
324	McDonald’s	Frappe Mocha (Large)	680	250	28	18	1	80	200	96	1	87	10	775
325	McDonald’s	Strawberry Banana Smoothie (Large)	330	10	1	0.5	0	5	55	77	4	70	3	397.5
326	McDonald’s	Strawberry Banana Smoothie (Medium)	260	5	1	0	0	5	40	60	3	54	2	312
327	McDonald’s	Strawberry Banana Smoothie (Small)	210	5	0.5	0	0	5	35	49	2	44	2	252
328	McDonald’s	Wild Berry Smoothie (Large)	320	10	1	0.5	0	5	45	75	4	69	3	386.5
329	McDonald’s	Wild Berry Smoothie (Medium)	260	5	1	0	0	5	35	60	4	55	3	312
330	McDonald’s	Wild Berry Smoothie (Small)	210	5	0.5	0	0	5	30	48	3	44	2	252
331	Burger King	Whopper® Sandwich	660	360	40	12	1.5	90	980	49	2	11	28	655
332	Burger King	Whopper® Sandwich with Cheese	740	420	46	16	2	115	1340	50	2	11	32	735
333	Burger King	Bacon & Cheese Whopper® Sandwich	790	460	51	17	2	125	1560	50	2	11	35	783
334	Burger King	Double Whopper® Sandwich	900	520	58	20	3	175	1050	49	2	11	48	883
335	Burger King	Double Whopper® Sandwich with Cheese	980	580	64	24	3	195	1410	50	2	11	52	963
336	Burger King	Triple Whopper® Sandwich	1130	680	75	28	4	255	1120	49	2	11	67	1102
337	Burger King	Triple Whopper® Sandwich with Cheese	1220	740	82	32	4.5	280	1470	50	2	11	71	1192
338	Burger King	Whopper JR.® Sandwich	310	160	18	5	0.5	40	390	27	1	7	13	309
339	Burger King	Flame Broiled Burgers	 	 	 	 	 	 	 	 	 	 	 	 
340	Burger King	Bacon King Sandwich	1150	710	79	31	3.5	240	2150	49	2	10	61	1130
341	Burger King	Cheddar Bacon King Sandwich	1190	750	84	33	3.5	235	1930	50	2	11	64	1170
342	Burger King	Single Quarter Pound King Sandwich	580	260	29	13	1.5	105	1310	49	2	10	32	571
343	Burger King	Double Quarter Pound King Sandwich	900	480	54	25	3	210	1740	50	2	11	56	880
344	Burger King	Single Stacker King	700	380	42	16	2	125	1360	48	1	10	35	691
345	Burger King	Double Stacker King	1050	610	68	28	3.5	235	1870	49	1	11	61	1028
346	Burger King	IMPOSSIBLE Whopper® Sandwich	630	310	34	11	0	10	1080	58	4	12	25	628
347	Burger King	Hamburger	240	90	10	3.5	0.5	35	380	26	1	6	13	237
348	Burger King	Cheeseburger	280	120	13	6	0.5	45	560	27	1	7	15	278
349	Burger King	Double Hamburger	350	160	18	7	1	70	410	26	1	6	21	342
350	Burger King	Double Cheeseburger	390	190	21	9	1.5	85	590	27	1	7	23	383
351	Burger King	Extra Long Cheeseburger	630	330	37	14	1.5	100	1050	45	2	9	29	624
352	Burger King	Bacon Cheeseburger	320	140	16	7	0.5	55	710	27	1	7	17	317
353	Burger King	Bacon Double Cheeseburger	420	210	24	10	1.5	90	740	27	1	7	25	412
354	Burger King	Crispy Chicken Sandwich	670	370	41	7	0	60	1080	54	2	8	23	662
355	Burger King	Spicy Crispy Chicken Sandwich	700	370	42	7	0	65	1140	57	3	8	25	690
356	Burger King	Original Chicken Sandwich	660	360	40	7	0	75	1170	48	2	5	28	644
357	Burger King	Bacon & Cheese Crispy Chicken Sandwich	800	460	52	13	1	95	1650	55	2	8	30	791
358	Burger King	BBQ Bacon Crispy Chicken Sandwich	790	440	49	10	0.5	80	1630	60	2	13	28	785
359	Burger King	Crispy Chicken Jr.	450	270	30	5	0	30	780	34	2	5	12	448
360	Burger King	Spicy Crispy Chicken Jr.	390	190	21	3.5	0	30	740	37	2	6	12	388
361	Burger King	Chicken Nuggets- 4pc	170	100	11	1.5	0	25	310	11	1	0	8	164
362	Burger King	Chicken Nuggets- 6pc	260	150	16	2.5	0	35	470	16	1	0	12	251
363	Burger King	Chicken Nuggets- 10pc	430	240	27	4.5	0	55	780	27	2	0	20	415
364	Burger King	Chicken Nuggets- 20pc	860	490	54	9	0	115	1570	53	3	1	39	831
365	Burger King	Spicy Chicken Nuggets- 4pc	210	130	15	3	0	20	570	11	2	0	8	205
366	Burger King	Spicy Chicken Nuggets- 6pc	320	200	22	4.5	0	35	850	17	3	0	12	313
367	Burger King	Spicy Chicken Nuggets- 10 pc	530	330	37	7	0	55	1420	28	4	1	20	518
368	Burger King	Spicy Chicken Nuggets- 20 pc	1050	670	74	15	0	110	2840	56	9	1	40	1026
369	Burger King	Chicken Fries – 9 pc.	280	150	17	2.5	0	35	850	20	1	1	13	271
370	Burger King	Crispy Taco	170	80	9	3	0	10	410	19	2	1	5	169
371	Burger King	BIG FISH Sandwich	510	250	28	4.5	0	30	1180	51	2	7	16	506
372	Burger King	Garden Chicken Salad with Crispy Chicken – no dressing	440	220	25	7	0	75	930	31	3	4	25	426
373	Burger King	Club Salad with Crispy Chicken – no dressing	540	300	33	10	0	95	1380	31	3	5	31	524
374	Burger King	Garden Side Salad – w/o dressing	60	35	4	2.5	0	10	95	3	1	2	4	61
375	Burger King	Ken’s Ranch Dressing	260	250	28	4	0	10	240	2	0	2	1	265
376	Burger King	Ken’s Golden Italian Dressing	160	150	17	2.5	0	0	380	4	0	3	0	166
377	Burger King	Ken’s Lite Honey Balsamic Vinaigrette	120	70	8	1	0	0	220	14	0	11	0	132
378	Burger King	Buttery Garlic Croutons- Packet	60	20	2.5	0	0	10	180	9	0	1	1	60
379	Burger King	Onion Rings – value	150	70	8	1.5	0	0	400	19	1	2	1	153
380	Burger King	Onion Rings – small	320	150	16	3	0	0	840	41	3	4	3	324
381	Burger King	Onion Rings – medium	410	190	21	3.5	0	0	1080	53	4	5	4	415
382	Burger King	Onion Rings – large	500	230	25	4.5	0	0	1310	64	5	7	5	507
383	Burger King	French Fries – value (unsalted)	220	80	9	1.5	0	0	210	34	3	1	2	221
384	Burger King	French Fries – small	320	120	13	2	0	0	300	49	5	1	4	319
385	Burger King	French Fries – medium	380	140	16	2	0	0	360	58	6	1	4	379
386	Burger King	French Fries – large	430	160	18	2.5	0	0	410	66	7	2	5	430
387	Burger King	Kids Oatmeal	170	30	3	1.5	0	5	260	32	3	12	4	180
388	Burger King	Chicken Nuggets- 4pc	170	100	11	1.5	0	25	310	11	1	0	8	164
389	Burger King	Chicken Nuggets- 6pc	260	150	16	2.5	0	35	470	16	1	0	12	251
390	Burger King	Hamburger	240	90	10	3.5	0.5	35	380	26	1	6	13	237
391	Burger King	Cheeseburger	280	120	13	6	0.5	45	560	27	1	7	15	278
392	Burger King	Side Items	 	 	 	 	 	 	 	 	 	 	 	 
393	Burger King	Mott’s® Natural Applesauce	50	0	0	0	0	0	0	13	1	11	0	61
394	Burger King	Beverage	 	 	 	 	 	 	 	 	 	 	 	 
395	Burger King	Fat FREE Milk (8 fl oz)	90	0	0	0	0	5	125	13	0	12	9	93
396	Burger King	1% Low Fat Chocolate Milk (8 fl oz)	160	25	2.5	1.5	0	15	150	26	0	25	8	179
397	Burger King	Capri Sun® 100% Apple Juice (6 fl oz)	80	0	0	0	0	0	25	20	0	20	0	100
398	Burger King	PB&J Jamwich	300	140	16	3	0	0	290	33	4	11	11	303
399	Burger King	Soft Serve Cone	190	40	4.5	3	0	20	150	32	0	24	5	212
400	Burger King	Dutch Apple Pie	340	130	14	6	0	0	310	51	1	25	3	368
401	Burger King	HERSHEY®’S Sundae Pie	310	170	19	12	0	10	220	32	1	22	3	341
402	Burger King	Pie made with TWIX®	370	180	20	13	0	10	330	45	1	30	4	409
403	Burger King	OREO® Cookie Cheesecake	350	170	18	8	0	35	310	41	1	25	6	377
404	Burger King	Soft Serve Cone	190	40	4.5	3	0	20	150	32	0	24	5	212
405	Burger King	Soft Serve Cup	170	40	4.5	3	0	20	150	28	0	24	5	192
406	Burger King	HERSHEY®’s Chocolate Sundae	260	45	5	3	0	20	160	49	1	43	5	301
407	Burger King	Caramel Sundae	240	50	5	3.5	0	20	210	42	0	33	5	272
408	Burger King	Chocolate Chip Cookies (each)	160	70	8	4	0	10	125	24	1	15	2	177
409	Burger King	CROISSAN’WICH® Egg & Cheese	340	170	18	8	0	160	610	29	1	4	12	340
410	Burger King	CROISSAN’WICH® Sausage, Egg & Cheese	500	300	33	13	0	195	930	30	1	4	19	498
411	Burger King	CROISSAN’WICH® Ham, Egg & Cheese	370	170	19	8	0	175	1030	30	1	5	17	366
412	Burger King	CROISSAN’WICH® Bacon, Egg & Cheese	370	190	21	9	0	170	760	30	1	4	14	369
413	Burger King	Fully Loaded CROISSAN’WICH®	610	360	40	17	0.5	225	1680	31	1	5	28	604
414	Burger King	Double CROISSAN’WICH® with Sausage & Bacon	580	340	40	16	0.5	215	1260	31	1	5	23	578
415	Burger King	Double CROISSAN’WICH® with Sausage	710	470	52	20	0.5	240	1420	31	1	5	29	706
416	Burger King	Double CROISSAN’WICH® with Ham & Sausage	580	340	38	16	0.5	220	1530	31	1	5	27	574
417	Burger King	Fully Loaded Biscuit	640	400	45	20	0	225	2190	31	1	4	28	636
418	Burger King	Ham, Egg, & Cheese Biscuit	400	210	24	12	0	175	1550	29	1	3	17	398
419	Burger King	Sausage, Egg, & Cheese Biscuit	530	340	38	17	0	195	1440	29	1	3	19	531
420	Burger King	Bacon, Egg & Cheese Biscuit	400	230	26	13	0	170	1270	29	1	3	13	403
421	Burger King	Sausage Biscuit	420	250	28	6	0	35	1050	28	1	2	12	416
422	Burger King	Breakfast Burrito Jr.	370	210	23	8	0	150	930	27	3	2	15	365
423	Burger King	EGG-NORMOUS BURRITOΡ	780	380	42	15	0	355	1960	68	3	4	32	767
424	Burger King	BK™ Ultimate Breakfast Platter	930	390	44	11	0	390	2230	110	4	40	24	957
425	Burger King	NY Ultimate Platter (Regional menu item)	900	420	46	12	0	380	1760	95	5	31	25	918
426	Burger King	Pancake and Sausage platter	610	280	31	9	0	80	1010	72	1	30	12	637
427	Burger King	Hash Browns – small	250	150	16	3.5	0	0	580	24	3	0	2	252
428	Burger King	Hash Browns – medium	500	290	33	7	0	0	1140	48	7	0	4	503
429	Burger King	Hash Browns – large	670	390	44	9	0	0	1530	65	9	0	5	674
430	Burger King	French Toast Sticks (3 piece)	230	100	11	2	0	0	260	29	1	8	3	237
431	Burger King	French Toast Sticks (5 piece)	380	160	18	3	0	0	430	49	2	13	5	391
432	Burger King	Additional Options	 	 	 	 	 	 	 	 	 	 	 	 
433	Burger King	American Cheese (slice)	40	30	3.5	2	0	10	180	1	0	0	2	40
434	Burger King	Ketchup (Packet)	10	0	0	0	0	0	125	3	0	2	0	12
435	Burger King	Mayonnaise (Packet)	80	80	9	0.5	0	10	75	1	0	0	0	81
436	Burger King	Strawberry or Grape Jam (packet)	30	0	0	0	0	0	0	7	0	6	0	36
437	Burger King	Breakfast Syrup (1 oz)	120	0	0	0	0	0	15	30	0	18	0	138
438	Burger King	Barbecue Dipping Sauce (1 oz)	40	0	0	0	0	0	310	11	0	10	0	50
439	Burger King	Ranch Dipping Sauce (1 oz)	140	140	15	2.5	0	10	85	1	0	1	1	143
440	Burger King	Buffalo Dipping Sauce (1 oz)	80	70	8	1.5	0	5	360	2	0	1	0	83
441	Burger King	Zesty Onion Ring Dipping Sauce (1 oz)	150	140	15	2.5	0	20	240	3	0	0	0	153
442	Burger King	Honey Mustard Dipping Sauce (1oz)	90	60	6	1	0	10	180	8	0	7	0	98
443	Burger King	Fat FREE Milk (8 fl oz)	90	0	0	0	0	5	125	13	0	12	9	93
444	Burger King	1% Low Fat Chocolate Milk (8 fl oz)	160	25	2.5	1.5	0	15	150	26	0	25	8	179
445	Burger King	Smoothie: Strawberry Banana 16 fl oz	310	10	1	0	0	0	55	71	3	50	4	356
446	Burger King	Oreo® Shake	720	180	20	12	0.5	65	540	118	1	98	16	814
447	Burger King	Chocolate Oreo® Shake	740	190	22	13	0.5	70	680	121	1	101	17	837
448	Burger King	Vanilla Milk Shake	580	140	15	10	0	60	420	98	0	85	14	661
449	Burger King	HERSHEY®’S Chocolate Milk Shake	610	140	16	10	0	60	500	103	1	88	14	694
450	Burger King	Strawberry Milk Shake	640	140	15	10	0	60	440	113	0	99	14	735
451	Burger King	SOFT DRINKS BY CUP SIZE (*no ice)	 	 	 	 	 	 	 	 	 	 	 	 
452	Burger King	Coca Cola classic®‡	 	 	 	 	 	 	 	 	 	 	 	 
453	Burger King	16 fl oz	210	0	0	0	0	0	50	58	0	58	0	268
454	Burger King	20 fl oz	270	0	0	0	0	0	60	73	0	73	0	343
455	Burger King	29 fl oz	290	0	0	0	0	0	85	105	0	105	0	395
456	Burger King	38 fl oz	510	0	0	0	0	0	115	138	0	138	0	648
457	Burger King	Diet Coke®‡	 	 	 	 	 	 	 	 	 	 	 	 
458	Burger King	16 fl oz	0	0	0	0	0	0	70	0	0	0	0	0
459	Burger King	20 fl oz	0	0	0	0	0	0	85	0	0	0	0	0
460	Burger King	29 fl oz	0	0	0	0	0	0	120	0	0	0	0	0
461	Burger King	38 fl oz	0	0	0	0	0	0	160	0	0	0	0	0
462	Burger King	Sprite®‡	 	 	 	 	 	 	 	 	 	 	 	 
463	Burger King	16 fl oz	210	0	0	0	0	0	95	56	0	56	0	266
464	Burger King	20 fl oz	260	0	0	0	0	0	120	70	0	70	0	330
465	Burger King	29 fl oz	380	0	0	0	0	0	170	102	0	102	0	482
466	Burger King	38 fl oz	500	0	0	0	0	0	230	133	0	133	0	633
467	Burger King	Dr. Pepper®‡	 	 	 	 	 	 	 	 	 	 	 	 
468	Burger King	16 fl oz	190	0	0	0	0	0	60	52	0	51	0	241
469	Burger King	20 fl oz	240	0	0	0	0	0	75	65	0	64	0	304
470	Burger King	29 fl oz	350	0	0	0	0	0	105	94	0	93	0	443
471	Burger King	38 fl oz	450	0	0	0	0	0	140	124	0	121	0	571
472	Burger King	Barq’s® Root Beer‡	 	 	 	 	 	 	 	 	 	 	 	 
473	Burger King	16 fl oz	240	0	0	0	0	0	100	65	0	65	0	305
474	Burger King	20 fl oz	300	0	0	0	0	0	120	81	0	81	0	381
475	Burger King	29 fl oz	350	0	0	0	0	0	180	118	0	118	0	468
476	Burger King	38 fl oz	450	0	0	0	0	0	230	155	0	155	0	605
477	Burger King	Cherry Coke®‡	 	 	 	 	 	 	 	 	 	 	 	 
478	Burger King	16 fl oz	220	0	0	0	0	0	55	61	0	61	0	281
479	Burger King	20 fl oz	280	0	0	0	0	0	70	76	0	76	0	356
480	Burger King	29 fl oz	410	0	0	0	0	0	100	110	0	110	0	520
481	Burger King	38 fl oz	450	0	0	0	0	0	130	145	0	145	0	595
482	Burger King	Fanta® Orange‡	 	 	 	 	 	 	 	 	 	 	 	 
483	Burger King	16 fl oz	230	0	0	0	0	0	60	62	0	61	0	291
484	Burger King	20 fl oz	280	0	0	0	0	0	70	78	0	77	0	357
485	Burger King	29 fl oz	410	0	0	0	0	0	105	113	0	111	0	521
486	Burger King	38 fl oz	530	0	0	0	0	0	135	148	0	146	0	676
487	Burger King	Hi-C® Fruit Punch‡	 	 	 	 	 	 	 	 	 	 	 	 
488	Burger King	16 fl oz	220	0	0	0	0	0	75	62	0	60	0	280
489	Burger King	20 fl oz	280	0	0	0	0	0	95	77	0	75	0	355
490	Burger King	29 fl oz	410	0	0	0	0	0	135	111	0	109	0	519
491	Burger King	38 fl oz	450	0	0	0	0	0	180	146	0	143	0	593
492	Burger King	MINUTE MAID® Light Lemonade	 	 	 	 	 	 	 	 	 	 	 	 
493	Burger King	16 fl oz	10	0	0	0	0	0	60	3	0	0	0	0
494	Burger King	20 fl oz	10	0	0	0	0	0	70	4	0	0	0	0
495	Burger King	29 fl oz	15	0	0	0	0	0	105	5	0	0	0	0
496	Burger King	38 fl oz	20	0	0	0	0	0	135	7	0	0	0	0
497	Burger King	Sweet Tea	 	 	 	 	 	 	 	 	 	 	 	 
498	Burger King	20 fl oz	120	0	0	0	0	0	0	35	0	35	0	155
499	Burger King	29 fl oz	160	0	0	0	0	0	0	49	0	49	0	209
500	Burger King	40 fl oz	240	0	0	0	0	0	0	71	0	71	0	311
501	Burger King	Unsweetened Tea	 	 	 	 	 	 	 	 	 	 	 	 
502	Burger King	20 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
503	Burger King	29 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
504	Burger King	40 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
505	Burger King	Capri Sun® 100% Apple Juice	80	0	0	0	0	0	25	20	0	20	0	100
506	Burger King	Minute Maid® Orange Juice	140	0	0	0	0	0	20	33	0	30	2	168
507	Burger King	Frozen Coke® – 16 oz	130	0	0	0	0	0	50	35	0	35	0	165
508	Burger King	BK® Café	 	 	 	 	 	 	 	 	 	 	 	 
509	Burger King	Hot Coffees	 	 	 	 	 	 	 	 	 	 	 	 
510	Burger King	BK® Café Coffee- 12 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
511	Burger King	BK® Café Coffee- 16 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
512	Burger King	BK® Café Coffee- 20 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
513	Burger King	BK® Café Decaf Coffee- 12 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
514	Burger King	BK® Café Decaf Coffee- 16 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
515	Burger King	BK® Café Decaf Coffee- 20 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
516	Burger King	Iced Coffees	 	 	 	 	 	 	 	 	 	 	 	 
517	Burger King	BK® Café Iced Vanilla Coffee- 12 fl oz	150	70	8	4	0	25	30	21	0	21	1	174
518	Burger King	BK® Café Iced Vanilla Coffee- 16 fl oz	200	90	10	5	0	30	40	27	0	27	2	230
519	Burger King	BK® Café Iced Vanilla Coffee- 20 fl oz	260	110	13	7	0	40	50	34	0	34	2	299
520	Burger King	BK® Café Iced Mocha Coffee- 12 fl oz	180	70	8	4	0	25	40	27	1	25	2	207
521	Burger King	BK® Café Iced Mocha Coffee- 16 fl oz	240	90	10	6	0	30	55	35	1	32	2	276
522	Burger King	BK® Café Iced Mocha Coffee- 20 fl oz	300	120	13	7	0	40	70	45	2	41	3	345
523	Burger King	Frappes	 	 	 	 	 	 	 	 	 	 	 	 
524	Burger King	BK® Café Mocha Frappe- 12 fl oz	300	80	8	5	0	30	200	50	1	41	7	339
525	Burger King	BK® Café Mocha Frappe- 16 fl oz	400	90	10	7	0	40	270	68	1	58	9	456
526	Burger King	BK® Café Mocha Frappe- 20 fl oz	510	110	13	8	0	50	350	87	1	71	12	577
527	Burger King	BK® Café Caramel Frappe- 12 fl oz	300	80	8	5	0	35	210	50	0	41	7	339
528	Burger King	BK® Café Caramel Frappe- 16 fl oz	400	90	10	7	0	40	280	68	0	56	9	454
529	Burger King	BK® Café Caramel Frappe- 20 fl oz	500	110	12	8	0	50	350	86	0	71	11	568
530	Wendy’s	Baconator	950	62	24	3	205	1630	40	2	8	59	923	
531	Wendy’s	Dave’s Double	810	51	20	3	175	1280	41	3	8	49	789	
532	Wendy’s	Dave’s Single	570	34	13	1.5	100	1110	40	3	9	30	562	
533	Wendy’s	Dave’s Triple	1090	72	30	4	260	1650	43	3	9	71	1058	
534	Wendy’s	Double Stack	390	21	9	1.5	90	740	26	1	6	25	380	
535	Wendy’s	Jr. Bacon Cheeseburger	380	22	8	1	65	680	25	1	5	19	374	
536	Wendy’s	Jr. Cheeseburger	280	13	6	1	50	660	26	1	6	16	276	
537	Wendy’s	Jr. Cheeseburger Deluxe	340	19	7	1	55	660	27	2	7	16	338	
538	Wendy’s	Son of Baconator	630	39	15	1.5	125	1280	37	2	7	34	618	
539	Wendy’s	3 Piece Chicken Tenders	330	16	2.5	0	75	1010	22	0	0	24	309	
540	Wendy’s	4 Piece Chicken Nuggets	170	11	2	0	35	340	10	0	0	9	163	
541	Wendy’s	4 Piece Chicken Tenders	430	21	3.5	0	100	1350	29	0	1	32	403	
542	Wendy’s	6 Picece Chicken Nuggets	250	16	3.5	0	50	510	14	1	0	13	241	
543	Wendy’s	6 Piece Chicken Tenders	650	32	5	0	150	2020	43	0	1	48	608	
544	Wendy’s	10 Piece Chicken Nuggets	420	27	5	0	80	850	24	1	0	22	403	
545	Wendy’s	Crispy Chicken BLT	420	23	6	0	50	950	35	2	5	20	411	
546	Wendy’s	Crispy Chicken Sandwich	330	16	3	0	30	600	33	2	4	14	323	
547	Wendy’s	Grilled Asiago Ranch Club	530	23	7	0	120	1220	36	3	6	43	500	
548	Wendy’s	Grilled Chicken Sandwich	370	10	2	0	90	830	38	3	8	34	346	
549	Wendy’s	Grilled Chicken Wrap	270	10	3.5	0	55	640	24	2	3	20	257	
550	Wendy’s	Homestyle Asiago Ranch Chicken Club	660	34	9	0	100	1650	52	3	7	38	638	
551	Wendy’s	Homestyle Chicken Sandwich	510	22	4	0	70	1150	51	3	6	28	492	
552	Wendy’s	S’Awesome Sauce	120	12	2	0	0	170	4	1	3	1	124	
553	Wendy’s	Spicy Asiago Ranch Club	670	32	9	0	100	1530	55	4	6	38	647	
554	Wendy’s	Spicy Chicken Sandwich	510	20	3.5	0	65	1030	54	4	6	29	491	
555	Wendy’s	Spicy Chicken Wrap	370	20	5	0	50	850	30	2	2	18	359	
556	Wendy’s	Apple Pecan Chicken Salad, Full Size	560	24	7	0	115	1020	52	7	40	38	569	
557	Wendy’s	Apple Pecan Chicken Salad, Half Size	340	17	4	0	55	550	29	4	22	20	346	
558	Wendy’s	Berry Burst Chicken Salad, Full Size	460	17	4.5	0	105	1090	41	7	29	41	453	
559	Wendy’s	Berry Burst Chicken Salad, Half Size	290	13	2.5	0	50	570	23	5	15	23	285	
560	Wendy’s	Caesar Side Salad	240	15	4	0	30	500	19	3	4	8	240	
561	Wendy’s	Garden Side Salad	250	18	4	0	20	460	18	2	4	7	251	
562	Wendy’s	Southwest Avocado Chicken Salad, Full Size	600	41	11	0	135	1220	18	7	7	42	576	
563	Wendy’s	Southwest Avocado Chicken Salad, Half Size	300	20	6	0	70	620	10	4	4	21	289	
564	Wendy’s	Spicy Caesar Chicken Salad, Full Size	720	42	12	1	150	1680	44	8	6	42	696	
565	Wendy’s	Spicy Caesar Chicken Salad, Half Size	410	23	6	0.5	75	930	30	5	4	23	397	
566	Wendy’s	Taco Salad, Full Size	660	32	13	1	85	1820	63	10	18	32	659	
567	Wendy’s	Taco Salad, Half Size	470	23	8	0.5	45	1320	49	7	12	19	471	
568	Wendy’s	Apple Bites	35	0	0	0	0	0	9	2	7	0	42	
569	Wendy’s	Baconator Fries	490	28	9	0	35	550	45	4	2	14	487	
570	Wendy’s	Bacon Cheese Baked Potato	440	14	6	0	35	550	64	7	4	17	433	
571	Wendy’s	Cheese Baked Potato	430	13	7	0	30	560	65	7	5	14	428	
572	Wendy’s	Chili & Cheese Baked Potato	460	11	5	0	35	710	71	8	7	19	453	
573	Wendy’s	Chili, Large	250	7	3	0.5	50	1170	23	5	9	23	239	
574	Wendy’s	Chili, Small	170	5	2	0	35	780	16	4	6	15	163	
575	Wendy’s	Chili Cheese Fries	500	25	8	0.5	35	710	53	6	4	16	496	
576	Wendy’s	Natural-Cut Fries, Junior	230	10	2	0	0	15	30	3	0	3	229	
577	Wendy’s	Natural-Cut Fries, Large	530	24	4.5	0	0	520	70	6	0	7	528	
578	Wendy’s	Natural-Cut Fries, Medium	420	19	3.5	0	0	420	56	5	0	6	418	
579	Wendy’s	Natural-Cut Fries, Small	320	15	2.5	0	0	320	43	4	0	5	318	
580	Wendy’s	Plain Baked Potato	270	0	0	0	0	25	61	7	3	7	266	
581	Wendy’s	Sour Cream and Chive Baked Potato	310	2.5	2.5	0	10	35	63	7	4	8	309	
582	Wendy’s	Summer Berry Burst Fruit Cup	20	0	0	0	0	0	5	1	3	0	23	
583	Wendy’s	1% Chocolate Milk	150	2.5	1.5	0	10	170	26	0	23	7	168	
584	Wendy’s	1% White Milk	90	2	1.5	0	10	105	10	0	10	7	95	
585	Wendy’s	All-Natural Lemonade, Large	380	0	0	0	0	0	100	0	93	0	473	
586	Wendy’s	All-Natural Lemonade, Medium	330	0	0	0	0	0	86	0	81	0	411	
587	Wendy’s	All-Natural Lemonade, Small	190	0	0	0	0	0	50	0	47	0	237	
588	Wendy’s	Apple Kiwi Fruit Tea, Large	330	0	0	0	0	60	83	0	80	0	410	
589	Wendy’s	Apple Kiwi Fruit Tea, Medium	300	0	0	0	0	50	76	0	73	0	373	
590	Wendy’s	Apple Kiwi Fruit Tea, Small	170	0	0	0	0	30	44	0	42	0	212	
591	Wendy’s	Barq’s Root Beer, Large	450	0	0	0	0	180	122	0	122	0	572	
592	Wendy’s	Barq’s Root Beer, Medium	360	0	0	0	0	150	98	0	98	0	458	
593	Wendy’s	Barq’s Root Beer, Small	220	0	0	0	0	90	61	0	61	0	281	
594	Wendy’s	Brewed Unsweetened Iced Tea, Large	5	0	0	0	0	25	2	0	0	0	5	
595	Wendy’s	Brewed Unsweetened Iced Tea, Medium	0	0	0	0	0	15	1	0	0	0	0	
596	Wendy’s	Brewed Unsweetened Iced Tea, Small	0	0	0	0	0	10	1	0	0	0	0	
597	Wendy’s	Caramel Iced Coffee, Medium	240	8	5	0	25	45	40	0	36	3	278	
598	Wendy’s	Caramel Iced Coffee, Small	160	6	3.5	0	20	30	26	0	24	2	186	
599	Wendy’s	Coca-Cola, Large	400	0	0	0	0	90	109	0	109	0	509	
600	Wendy’s	Coca-Cola, Medium	320	0	0	0	0	70	87	0	87	0	407	
601	Wendy’s	Coca-Cola, Small	200	0	0	0	0	45	54	0	54	0	254	
602	Wendy’s	Coca-Cola Zero Sugar, Large	0	0	0	0	0	100	1	0	0	0	0	
603	Wendy’s	Coca-Cola Zero Sugar, Medium	0	0	0	0	0	80	1	0	0	0	0	
604	Wendy’s	Coca-Cola Zero Sugar, Small	0	0	0	0	0	50	0	0	0	0	0	
605	Wendy’s	Diet Coke, Large	0	0	0	0	0	125	1	0	0	0	0	
606	Wendy’s	Diet Coke, Medium	0	0	0	0	0	100	1	0	0	0	0	
607	Wendy’s	Diet Coke, Small	0	0	0	0	0	45	0	0	0	0	0	
608	Wendy’s	Dr Pepper, Large	240	0	0	0	0	70	66	0	64	0	304	
609	Wendy’s	Dr Pepper, Medium	190	0	0	0	0	55	53	0	51	0	241	
610	Wendy’s	Dr Pepper, Small	120	0	0	0	0	35	33	0	32	0	152	
611	Wendy’s	Fanta Orange, Large	430	0	0	0	0	110	117	0	115	0	545	
612	Wendy’s	Fanta Orange, Medium	340	0	0	0	0	85	94	0	92	0	432	
613	Wendy’s	Fanta Orange, Small	210	0	0	0	0	55	59	0	58	0	268	
614	Wendy’s	Hi-C Flashin’ Fruit Punch, Large	420	0	0	0	0	140	115	0	113	0	533	
615	Wendy’s	Hi-C Flashin’ Fruit Punch, Medium	340	0	0	0	0	115	92	0	90	0	430	
616	Wendy’s	Hi-C Flashin’ Fruit Punch, Small	210	0	0	0	0	70	58	0	56	0	266	
617	Wendy’s	Honest Tropical Green Tea, Large	110	0	0	0	0	55	29	0	29	0	139	
618	Wendy’s	Honest Tropical Green Tea, Medium	90	0	0	0	0	40	22	0	22	0	112	
619	Wendy’s	Honest Tropical Green Tea, Small	60	0	0	0	0	25	14	0	14	0	74	
620	Wendy’s	Hot Tea	0	0	0	0	0	0	1	0	0	0	0	
621	Wendy’s	Limeade, Large	460	0	0	0	0	55	117	0	111	0	571	
622	Wendy’s	Limeade, Medium	380	0	0	0	0	45	98	0	93	0	473	
623	Wendy’s	Limeade, Small	230	0	0	0	0	30	59	0	56	0	286	
624	Wendy’s	Minute Maid Light Lemonade, Large	15	0	0	0	0	10	2	0	0	0	15	
625	Wendy’s	Minute Maid Light Lemonade, Medium	10	0	0	0	0	10	1	0	0	0	10	
626	Wendy’s	Minute Maid Light Lemonade, Small	5	0	0	0	0	5	1	0	0	0	5	
627	Wendy’s	Mocha Iced Coffee, Medium	210	8	5	0	25	40	32	0	28	3	240	
628	Wendy’s	Mocha Iced Coffee, Small	170	6	3.5	0	20	30	28	0	25	2	197	
629	Wendy’s	Pear Berry Fruit Tea, Large	320	0	0	0	0	60	82	0	76	0	396	
630	Wendy’s	Pear Berry Fruit Tea, Medium	300	0	0	0	0	50	76	0	70	0	370	
631	Wendy’s	Pear Berry Fruit Tea, Small	170	0	0	0	0	30	44	0	40	0	210	
632	Wendy’s	Skinny Vanilla Iced Coffee, Medium	100	8	5	0	25	45	14	0	0	3	102	
633	Wendy’s	Skinny Vanilla Iced Coffee, Small	70	5	3.5	0	15	30	6	0	0	2	72	
634	Wendy’s	Small Sprite, Small	200	0	0	0	0	90	53	0	53	0	253	
635	Wendy’s	Sprite, Large	390	0	0	0	0	180	105	0	105	0	495	
636	Wendy’s	Sprite, Medium	310	0	0	0	0	140	84	0	84	0	394	
637	Wendy’s	Strawberry Lemonade, Large	480	0	0	0	0	55	121	0	114	0	594	
638	Wendy’s	Strawberry Lemonade, Medium	380	0	0	0	0	45	98	0	92	0	472	
639	Wendy’s	Strawberry Lemonade, Small	230	0	0	0	0	30	58	0	54	0	284	
640	Wendy’s	Strawberry Sweet Tea, Large	270	0	0	0	0	15	69	0	67	0	337	
641	Wendy’s	Strawberry Sweet Tea, Medium	240	0	0	0	0	15	60	0	59	0	299	
642	Wendy’s	Strawberry Sweet Tea, Small	140	0	0	0	0	10	36	0	35	0	175	
643	Wendy’s	Strawberry Tea, Large	90	0	0	0	0	20	22	0	20	0	110	
644	Wendy’s	Strawberry Tea, Medium	60	0	0	0	0	15	16	0	14	0	74	
645	Wendy’s	Strawberry Tea, Small	45	0	0	0	0	10	11	0	10	0	55	
646	Wendy’s	Sweetened Iced Tea, Large	300	0	0	0	0	25	77	0	75	0	375	
647	Wendy’s	Sweetened Iced Tea, Medium	220	0	0	0	0	20	58	0	56	0	276	
648	Wendy’s	Sweetened Iced Tea, Small	160	0	0	0	0	10	41	0	40	0	200	
649	Wendy’s	Vanilla Iced Coffee, Medium	250	8	5	0	25	40	42	0	39	3	291	
650	Wendy’s	Vanilla Iced Coffee, Small	170	6	3.5	0	20	30	28	0	26	2	198	
651	Wendy’s	Classic Chocolate Frosty, Junior	200	5	3	0	20	90	33	0	27	6	224	
652	Wendy’s	Classic Chocolate Frosty, Large	590	15	10	0.5	60	260	99	0	81	17	664	
653	Wendy’s	Classic Chocolate Frosty, Medium	470	12	8	0.5	50	210	79	0	65	13	530	
654	Wendy’s	Classic Chocolate Frosty, Small	350	9	6	0	35	150	58	0	47	10	393	
655	Wendy’s	Vanilla Frosty, Junior	190	5	3.5	0	25	90	32	0	27	5	216	
656	Wendy’s	Vanilla Frosty, Large	570	15	10	0.5	70	260	94	0	78	15	643	
657	Wendy’s	Vanilla Frosty, Medium	450	12	8	0.5	55	210	75	0	63	12	509	
658	Wendy’s	Vanilla Frosty, Small	340	9	6	0	45	160	56	0	47	9	384	
659	Wendy’s	Chocolate Chunk Cookie	310	16	8	0	20	210	40	2	24	3	339	
660	Wendy’s	Double Chocolate Chunk Cookie	290	14	7	0	20	230	39	4	21	4	314	
661	Wendy’s	Sugar Cookie	330	16	8	0	25	300	43	1	24	3	359	
662	Wendy’s	Wendy’s Kids’ Meal	Calories	Total Fat (g)	Saturated Fat (g)	Trans Fat (g)	Cholesterol (mg)	Sodium (mg)	Carbs (g)	Fiber (g)	Sugar (g)	Protein (g)	Weight Watchers Pnts	
663	Wendy’s	Kids 2 Piece Chicken Tenders	200	10	1.5	0	45	620	13	0	0	15	187	
664	Wendy’s	Kids 4 Piece Chicken Nuggets	170	11	2	0	35	340	10	0	0	9	163	
665	Wendy’s	Kids Cheeseburger	280	13	6	0.5	50	540	25	1	5	15	276	
666	Wendy’s	Kids Grilled Chicken Wrap	270	10	3.5	0	55	640	24	2	3	20	257	
667	Wendy’s	Kids Hamburger	240	9	3.5	0.5	40	350	24	1	5	13	236	
668	Wendy’s	Artisan Egg Sandwich with Bacon	320	17	8	0	245	750	25	1	4	18	314	
669	Wendy’s	Artisan Egg Sandwich with Sausage	480	33	13	0	275	980	27	1	4	21	476	
670	Wendy’s	Bacon Breakfast Bowl	510	28	9	0	245	1390	44	4	2	19	502	
671	Wendy’s	Biggie Breakfast Sandwich	610	40	15	0	290	1400	37	2	7	27	605	
672	Wendy’s	Fresh-Baked Biscuit with Applewood Smoked Bacon	410	24	13	0	235	970	34	1	5	15	413	
673	Wendy’s	Fresh Baked Biscuit with Natural Sausage	590	41	19	0	270	1270	36	1	6	20	595	
674	Wendy’s	Gravy and Sausage Bowl	450	22	6	0	220	1260	50	4	2	12	446	
675	Wendy’s	Honey Butter Chicken Biscuit	500	26	12	0	50	1120	48	1	9	19	502	
676	Wendy’s	Sausage and Egg Burrito	360	20	8	0	210	920	29	1	2	17	353	
677	Wendy’s	Sausage and Gravy Biscuit	490	29	14	0	20	1400	49	2	6	8	502	
678	Wendy’s	Sausage Biscuit	480	33	15	0	50	1010	35	1	5	12	488	
679	Wendy’s	Sausage Breakfast Bowl	640	42	14	0	270	1540	46	4	3	21	636	
680	Wendy’s	Seasoned Home-Style Potatoes, Large	360	13	2.5	0	0	1080	57	6	1	5	359	
681	Wendy’s	Seasoned Home-Style Potatoes, Medium	250	9	1.5	0	0	750	39	4	1	4	249	
682	Wendy’s	Seasoned Home-Style Potatoes, Small	230	8	1.5	0	0	680	35	4	0	3	229	
683	Wendy’s	Two Sausage and Egg Burritos	720	41	16	0	420	1830	59	2	5	34	707	
684	Wendy’s	Two Sausage Biscuits	960	65	31	0	95	2020	70	3	10	23	978	
685	KFC	Limited Time Cinnabon Dessert  Biscuits	290	13	7	0	<5	580	40	2	17	4	310	
686	KFC	Limited Time ORIGINAL RECIPE CHICKEN Chicken Breast	390	21	4	0	120	1190	11	2	0	39	355	
687	KFC	Limited Time ORIGINAL RECIPE CHICKEN Chicken Limited Time Drumstick	130	8	1.5	0	55	430	4	1	0	12	119.5	
688	KFC	Limited Time ORIGINAL RECIPE CHICKEN Chicken Thigh	280	19	4.5	0	100	910	8	1	0	19	265.5	
689	KFC	Limited Time ORIGINAL RECIPE CHICKEN Chicken Whole Wing	130	8	2	0	55	380	3	0	0	10	122	
690	KFC	Chicken Breast	770	60	10	0	105	1530	21	1	1	35	746	
691	KFC	Chicken Drumstick	250	21	3.5	0	50	530	6	1	0	11	242.5	
692	KFC	Chicken Thigh	500	40	7	0	100	970	11	1	1	22	486	
693	KFC	Chicken Whole Wing	290	25	4	0	45	520	6	1	1	10	285	
694	KFC	Breast	260	12	3	0	130	790	1	0	0	38	225	
695	KFC	Drumstick	100	6	1.5	0	55	260	0	0	0	11	90.5	
696	KFC	Thigh	180	12	3.5	0	90	470	0	0	0	17	166.5	
697	KFC	Whole Wing	90	6	1.5	0	45	210	1	0	0	9	82.5	
698	KFC	Breast	540	40	7	0	100	1390	14	2	1	31	517	
699	KFC	Drumstick	190	14	2.5	0	40	510	6	1	0	9	183.5	
700	KFC	Thigh	390	32	6	0	65	900	12	2	1	13	384	
701	KFC	Whole Wing	180	15	2.5	0	35	450	5	1	0	8	174.5	
702	KFC	EXTRA CRISPY  Chicken Breast	530	35	6	0	105	1150	18	0	0	35	501	
703	KFC	EXTRA CRISPY  Chicken Drumstick	170	12	2	0	50	390	5	0	0	10	162	
704	KFC	EXTRA CRISPY  Chicken Thigh	330	23	4.5	0	100	700	9	0	0	22	312.5	
705	KFC	EXTRA CRISPY  Chicken Whole Wing	170	13	2	0	45	340	5	0	0	10	162	
706	KFC	KENTUCKY GRILLED CHICKEN Breast	210	7	2	0	130	710	0	0	0	38	174	
707	KFC	KENTUCKY GRILLED CHICKEN Drumstick	80	4	1	0	55	220	0	0	0	11	70	
708	KFC	KENTUCKY GRILLED CHICKEN Thigh	150	9	3	0	90	420	0	0	0	17	136	
709	KFC	KENTUCKY GRILLED CHICKEN Whole Wing	70	3	1	0	45	180	0	0	0	9	62	
710	KFC	SPICY CRISPY CHICKEN Breast	350	20	3.5	0	100	1100	11	1	0	30	323.5	
711	KFC	SPICY CRISPY CHICKEN Drumstick	130	8	1.5	0	40	420	5	1	0	9	122.5	
712	KFC	SPICY CRISPY CHICKEN Thigh	270	20	3.5	0	65	720	10	1	0	13	260.5	
713	KFC	SPICY CRISPY CHICKEN Whole Wing	120	8	1.5	0	35	350	5	0	0	7	114.5	
714	KFC	EXTRA CRISPY  Tender (each)	260	14	2	0	50	610	15	<1	0	19	243	
715	KFC	EXTRA CRISPY  Tender (each)	220	16	2.5	0	25	460	9	<1	0	10	212.5	
716	KFC	KENTUCKY FRIED WINGS Buffalo	100	7	1.5	0	20	310	3	0	0	5	96.5	
717	KFC	KENTUCKY FRIED WINGS Honey BBQ	100	6	1	0	20	210	8	0	4	5	100	
718	KFC	KENTUCKY FRIED WINGS Nashville Hot	130	11	2	0	20	230	4	0	0	5	127	
719	KFC	KENTUCKY FRIED WINGS Unsauced	80	6	1	0	20	150	3	0	0	5	76	
720	KFC	POPCORN NUGGETS Kids	290	19	2.5	0	30	870	19	1	0	13	279.5	
721	KFC	POPCORN NUGGETS Large	620	39	5	0	65	1820	39	2	0	27	598	
722	KFC	BBQ Baked Beans	190	1	0	0	0	650	34	7	15	11	194	
723	KFC	Biscuit	180	8	4.5	0	0	520	22	1	1	4	181.5	
724	KFC	Coleslaw	170	12	2	0	<5	180	14	4	10	1	181	
725	KFC	Corn on the Cob	70	0.5	0	0	0	0	17	2	3	2	71	
726	KFC	Green Beans	25	0	0	0	0	300	5	3	1	1	25	
727	KFC	KFC® Cornbread Muffin	210	9	1.5	0	35	240	28	<1	11	3	219.5	
728	KFC	Macaroni & Cheese	140	6	1.5	0	<5	590	17	1	2	5	138.5	
729	KFC	Macaroni Salad	140	8	1	0	15	290	14	0	9	1	149	
730	KFC	Mashed Potatoes	110	3.5	0.5	0	0	330	17	1	0	2	108.5	
731	KFC	Mashed Potatoes With Gravy	130	4.5	1	0	0	520	20	1	0	3	128	
732	KFC	Potato Salad	340	28	4.5	0	25	290	19	2	3	2	345.5	
733	KFC	Secret Recipe Fries	320	15	2	0	0	1100	41	3	0	5	317	
734	KFC	Sweet Kernel Corn	70	0.5	0	0	0	0	16	2	2	2	70	
735	KFC	BBQ Baked Beans (Family)	830	5	1	0	0	2810	148	31	63	47	847	
736	KFC	Coleslaw (Family)	640	46	7	0	15	670	54	14	37	4	680	
737	KFC	Corn on the Cob (Family)	280	2	0	0	0	15	67	8	11	9	282	
738	KFC	Green Beans (Family)	80	0	0	0	0	930	15	9	3	4	79	
739	KFC	Macaroni & Cheese (Family)	540	23	6	0	10	2220	66	5	8	18	536	
740	KFC	Macaroni Salad (Family)	480	28	3.5	0	55	990	50	0	30	3	510.5	
741	KFC	Mashed Potatoes (Family)	460	15	3	0	0	1410	72	6	0	9	454	
742	KFC	Mashed Potatoes With Gravy (Family)	590	21	5	0	0	2590	88	6	1	12	584	
743	KFC	Potato Salad (Family)	1200	98	16	0	80	1010	65	8	12	8	1220	
744	KFC	Secret Recipe Fries (Family)	840	40	5	0	0	2890	108	9	0	13	832	
745	KFC	Sweet Kernel Corn (Family)	280	2.5	0	0	0	10	67	7	8	10	278	
746	KFC	Chicken Littles	300	15	2.5	0	30	620	27	1	3	14	291.5	
747	KFC	Chicken Littles – Buffalo	310	17	2.5	0	30	790	27	1	3	14	301.5	
748	KFC	Chicken Littles – Honey BBQ	320	15	2.5	0	30	680	31	1	7	14	315.5	
749	KFC	Chicken Littles – Nashville Hot	340	19	3	0	30	680	27	1	3	14	332	
750	KFC	Classic Chicken Sandwich	650	35	4.5	0	90	1260	49	1	6	34	626.5	
751	KFC	Crispy Colonel’s Sandwich	470	24	3.5	0	60	1170	39	<1	4	24	453.5	
752	KFC	Crispy Colonel’s Sandwich – Buffalo	500	27	4	0	60	1500	39	<1	4	24	484	
753	KFC	Crispy Colonel’s Sandwich – Honey BBQ	510	25	3.5	0	60	1290	48	<1	12	24	501.5	
754	KFC	Crispy Colonel’s Sandwich – Nashville Hot	540	32	4.5	0	60	1290	40	<1	5	24	525.5	
755	KFC	Crispy Twister®	630	34	7	0	70	1260	53	4	3	28	612	
756	KFC	Honey BBQ Sandwich	350	3.5	0.5	0	55	1350	55	2	22	24	348.5	
757	KFC	Spicy Chicken Sandwich	620	33	4	0	85	2140	49	1	6	34	596	
758	KFC	Chicken Pot Pie	720	41	25	0	80	1750	60	7	5	26	724	
759	KFC	KFC® Famous Bowl	740	35	6	0	45	2350	81	6	2	26	722	
760	KFC	KFC® Famous Bowl – Snack Size	270	14	3.5	0	20	850	27	2	1	11	263.5	
761	KFC	Caesar Side Salad	40	2	1	0	5	90	2	1	1	3	39	
762	KFC	House Side Salad	15	0	0	0	0	10	3	2	2	1	16	
763	KFC	Heinz Buttermilk Dressing	160	17	2	0	10	220	1	0	1	0	163	
764	KFC	Hidden Valley The Original Ranch Fat Free Dressing	35	0	0	0	0	410	8	0	2	1	36	
765	KFC	KFC® Creamy Parmesan Caesar Dressing	260	26	5	0	15	540	4	0	2	2	265	
766	KFC	Marzetti Light Italian Dressing	15	0.5	0	0	0	510	2	0	1	0	16	
767	KFC	Parmesan Garlic Croutons	60	3	0	0	0	135	8	<1	0	2	58	
768	KFC	Apple Turnover	230	10	2.5	0	0	140	32	<1	12	2	242.5	
769	KFC	Café Valley Chocolate Chip Cake (1 Slice)	300	15	3	0	50	260	39	1	27	4	326	
770	KFC	Café Valley Lemon Cake (1 Slice)	220	10	2	0	30	170	30	0	20	2	240	
771	KFC	Café Valley Mini Chocolate Chip Cake	300	12	2.5	0	40	190	49	1	35	3	334.5	
772	KFC	Café Valley Mini Lemon Cake	300	13	2.5	0	50	230	43	0	31	3	330.5	
773	KFC	Chocolate Chip Cookie	120	6	3	0	<5	70	18	1	12	1	134	
774	KFC	Oreo Cookies and Crème Pie	270	13	8	0	<5	210	35	1	24	3	299	
775	KFC	Reese’s Peanut Butter Pie	300	17	9	0	<5	270	33	1	22	5	326	
776	KFC	BBQ – Dipping Sauce Cup	45	0	0	0	0	150	11	0	11	0	56	
777	KFC	Colonel’s Buttery Spread	35	4	1.5	0	0	35	0	0	0	0	36.5	
778	KFC	Grape Jelly Packet	35	0	0	0	0	10	9	0	7	0	42	
779	KFC	Honey Mustard – Dipping Sauce Cup	110	9	1.5	0	<5	120	6	0	6	0	117.5	
780	KFC	Honey Sauce Packet	30	0	0	0	0	0	8	0	5	0	35	
781	KFC	Ketchup	30	0	0	0	0	250	8	0	6	0	36	
782	KFC	KFC Sauce – Dipping Sauce Cup	90	8	1.5	0	10	170	5	0	5	0	96.5	
783	KFC	Lemon Juice Packet	5	0	0	0	0	20	1	0	0	0	5	
784	KFC	Ranch – Dipping Sauce Cup	130	14	2.5	0	10	240	2	0	1	0	133.5	
785	KFC	Strawberry Jam Packet	35	0	0	0	0	0	9	0	6	0	41	
786	KFC	Capri Sun® 100% Juice Fruit Punch	80	0	0	0	0	25	21	0	20	0	100	
787	KFC	Chocolate Milk 1%	150	2.5	1.5	0	10	170	26	0	23	7	167.5	
788	KFC	Milk 1%	90	2	1.5	0	10	105	10	0	10	7	94.5	
789	KFC	Musselman’s™ Applesauce	45	0	0	0	0	0	12	1	8	0	53	
790	KFC	7UP® (12 fl oz)	140	0	0	0	0	50	35	0	35	0	175	
791	KFC	7UP® (16 fl oz)	190	0	0	0	0	70	46	0	46	0	236	
792	KFC	7UP® (20 fl oz)	240	0	0	0	0	85	58	0	58	0	298	
793	KFC	7UP® (30 fl oz)	350	0	0	0	0	125	87	0	87	0	437	
794	KFC	Classic Lemonade (1/2 Gallon)	880	0	0	0	0	780	234	0	228	0	1108	
795	KFC	Classic Lemonade (20 fl oz)	140	0	0	0	0	130	39	0	38	0	178	
796	KFC	Code Red Mountain Dew® (12 fl oz)	170	0	0	0	0	50	46	0	46	0	216	
797	KFC	Code Red Mountain Dew® (16 fl oz)	230	0	0	0	0	65	62	0	62	0	292	
798	KFC	Code Red Mountain Dew® (20 fl oz)	290	0	0	0	0	85	77	0	77	0	367	
799	KFC	Code Red Mountain Dew® (30 fl oz)	430	0	0	0	0	125	116	0	115	0	545	
800	KFC	Diet Dr Pepper® (12 fl oz)	0	0	0	0	0	70	0	0	0	0	0	
801	KFC	Diet Dr Pepper® (16 fl oz)	0	0	0	0	0	95	0	0	0	0	0	
802	KFC	Diet Dr Pepper® (20 fl oz)	0	0	0	0	0	120	0	0	0	0	0	
803	KFC	Diet Dr Pepper® (30 fl oz)	0	0	0	0	0	180	0	0	0	0	0	
804	KFC	Diet Mist Twst® (12 fl oz)	0	0	0	0	0	35	0	0	0	0	0	
805	KFC	Diet Mist Twst® (16 fl oz)	0	0	0	0	0	50	0	0	0	0	0	
806	KFC	Diet Mist Twst® (20 fl oz)	0	0	0	0	0	60	0	0	0	0	0	
807	KFC	Diet Mist Twst® (30 fl oz)	5	0	0	0	0	95	0	0	0	0	5	
808	KFC	Diet Mountain Dew® (12 fl oz)	0	0	0	0	0	55	1	0	0	0	0	
809	KFC	Diet Mountain Dew® (16 fl oz)	5	0	0	0	0	75	1	0	0	0	5	
810	KFC	Diet Mountain Dew® (20 fl oz)	10	0	0	0	0	90	1	0	1	0	11	
811	KFC	Diet Mountain Dew® (30 fl oz)	10	0	0	0	0	140	1	0	1	0	11	
812	KFC	Diet Pepsi® (12 fl oz)	0	0	0	0	0	55	0	0	0	0	0	
813	KFC	Diet Pepsi® (16 fl oz)	0	0	0	0	0	75	0	0	0	0	0	
814	KFC	Diet Pepsi® (20 fl oz)	0	0	0	0	0	95	0	0	0	0	0	
815	KFC	Diet Pepsi® (30 fl oz)	0	0	0	0	0	140	0	0	0	0	0	
816	KFC	Diet Pepsi® Wild Cherry Pepsi® (12 fl oz)	0	0	0	0	0	35	0	0	0	0	0	
817	KFC	Diet Pepsi® Wild Cherry Pepsi® (16 fl oz)	0	0	0	0	0	50	0	0	0	0	0	
818	KFC	Diet Pepsi® Wild Cherry Pepsi® (20 fl oz)	0	0	0	0	0	60	0	0	0	0	0	
819	KFC	Diet Pepsi® Wild Cherry Pepsi® (30 fl oz)	0	0	0	0	0	95	0	0	0	0	0	
820	KFC	Dr Pepper® (12 fl oz)	140	0	0	0	0	45	39	0	38	0	178	
821	KFC	Dr Pepper® (16 fl oz)	190	0	0	0	0	60	52	0	51	0	241	
822	KFC	Dr Pepper® (20 fl oz)	240	0	0	0	0	75	65	0	64	0	304	
823	KFC	Dr Pepper® (30 fl oz)	360	0	0	0	0	110	98	0	96	0	456	
824	KFC	Lipton® Brisk® Lemon Tea (12 fl oz)	80	0	0	0	0	40	22	0	22	0	102	
825	KFC	Lipton® Brisk® Lemon Tea (16 fl oz)	110	0	0	0	0	55	29	0	29	0	139	
826	KFC	Lipton® Brisk® Lemon Tea (20 fl oz)	140	0	0	0	0	70	36	0	36	0	176	
827	KFC	Lipton® Brisk® Lemon Tea (30 fl oz)	210	0	0	0	0	105	55	0	54	0	264	
828	KFC	Lipton® Brisk® No Calorie Peach Iced Green Tea (12 fl oz)	0	0	0	0	0	105	0	0	0	0	0	
829	KFC	Lipton® Brisk® No Calorie Peach Iced Green Tea (16 fl oz)	0	0	0	0	0	140	0	0	0	0	0	
830	KFC	Lipton® Brisk® No Calorie Peach Iced Green Tea (20 fl oz)	5	0	0	0	0	180	0	0	0	0	5	
831	KFC	Lipton® Brisk® No Calorie Peach Iced Green Tea (30 fl oz)	10	0	0	0	0	270	0	0	0	0	10	
832	KFC	Lipton® Brisk® Raspberry Tea (12 fl oz)	80	0	0	0	0	45	20	0	20	0	100	
833	KFC	Lipton® Brisk® Raspberry Tea (16 fl oz)	100	0	0	0	0	55	26	0	26	0	126	
834	KFC	Lipton® Brisk® Raspberry Tea (20 fl oz)	130	0	0	0	0	70	33	0	33	0	163	
835	KFC	Lipton® Brisk® Raspberry Tea (30 fl oz)	190	0	0	0	0	110	49	0	49	0	239	
836	KFC	Lipton® Brisk® Sweet Iced Tea (12 fl oz)	80	0	0	0	0	45	22	0	21	0	101	
837	KFC	Lipton® Brisk® Sweet Iced Tea (16 fl oz)	110	0	0	0	0	65	29	0	29	0	139	
838	KFC	Lipton® Brisk® Sweet Iced Tea (20 fl oz)	130	0	0	0	0	80	36	0	36	0	166	
839	KFC	Lipton® Brisk® Sweet Iced Tea (30 fl oz)	200	0	0	0	0	120	54	0	54	0	254	
840	KFC	Lipton® Brisk® Unsweetened No Lemon Iced Tea (12 fl oz)	0	0	0	0	0	45	0	0	0	0	0	
841	KFC	Lipton® Brisk® Unsweetened No Lemon Iced Tea (16 fl oz)	0	0	0	0	0	60	0	0	0	0	0	
842	KFC	Lipton® Brisk® Unsweetened No Lemon Iced Tea (20 fl oz)	0	0	0	0	0	75	0	0	0	0	0	
843	KFC	Lipton® Brisk® Unsweetened No Lemon Iced Tea (30 fl oz)	0	0	0	0	0	115	0	0	0	0	0	
844	KFC	Manzanita Sol® (12 fl oz)	160	0	0	0	0	35	42	0	42	0	202	
845	KFC	Manzanita Sol® (16 fl oz)	210	0	0	0	0	45	57	0	57	0	267	
846	KFC	Manzanita Sol® (20 fl oz)	260	0	0	0	0	55	71	0	71	0	331	
847	KFC	Manzanita Sol® (30 fl oz)	400	0	0	0	0	80	106	0	106	0	506	
848	KFC	Miranda® Strawberry (12 fl oz)	160	0	0	0	0	70	44	0	44	0	204	
849	KFC	Miranda® Strawberry (16 fl oz)	220	0	0	0	0	95	58	0	58	0	278	
850	KFC	Miranda® Strawberry (20 fl oz)	270	0	0	0	0	120	73	0	73	0	343	
851	KFC	Miranda® Strawberry (30 fl oz)	410	0	0	0	0	180	109	0	109	0	519	
852	KFC	Mist Twst® (12 fl oz)	150	0	0	0	0	35	41	0	41	0	191	
853	KFC	Mist Twst® (16 fl oz)	200	0	0	0	0	45	54	0	54	0	254	
854	KFC	Mist Twst® (20 fl oz)	260	0	0	0	0	55	68	0	68	0	328	
855	KFC	Mist Twst® (30 fl oz)	380	0	0	0	0	80	101	0	101	0	481	
856	KFC	MNT DEW Sweet Lightning (20 fl oz)	120	0	0	0	0	190	32	0	25	0	145	
857	KFC	Mountain Dew® (12 fl oz)	160	0	0	0	0	50	44	0	44	0	204	
858	KFC	Mountain Dew® (16 fl oz)	220	0	0	0	0	70	59	0	58	0	278	
859	KFC	Mountain Dew® (20 fl oz)	270	0	0	0	0	85	73	0	73	0	343	
860	KFC	Mountain Dew® (30 fl oz)	410	0	0	0	0	125	110	0	109	0	519	
861	KFC	Mug Root Beer® (12 fl oz)	140	0	0	0	0	45	39	0	39	0	179	
862	KFC	Mug Root Beer® (16 fl oz)	190	0	0	0	0	60	52	0	52	0	242	
863	KFC	Mug Root Beer® (20 fl oz)	240	0	0	0	0	75	65	0	65	0	305	
864	KFC	Mug Root Beer® (30 fl oz)	360	0	0	0	0	110	98	0	98	0	458	
865	KFC	Pepsi Zero Sugar® (12 fl oz)	0	0	0	0	0	35	0	0	0	0	0	
866	KFC	Pepsi Zero Sugar® (16 fl oz)	0	0	0	0	0	50	0	0	0	0	0	
867	KFC	Pepsi Zero Sugar® (20 fl oz)	0	0	0	0	0	60	0	0	0	0	0	
868	KFC	Pepsi Zero Sugar® (30 fl oz)	0	0	0	0	0	95	1	0	0	0	0	
869	KFC	Pepsi® (12 fl oz)	150	0	0	0	0	30	41	0	41	0	191	
870	KFC	Pepsi® (16 fl oz)	200	0	0	0	0	45	55	0	55	0	255	
871	KFC	Pepsi® (20 fl oz)	250	0	0	0	0	55	69	0	69	0	319	
872	KFC	Pepsi® (30 fl oz)	380	0	0	0	0	80	104	0	103	0	483	
873	KFC	Sobe Lifewater Yumberry Pomegranate (12 fl oz)	0	0	0	0	0	45	0	0	0	0	0	
874	KFC	Sobe Lifewater Yumberry Pomegranate (16 fl oz)	0	0	0	0	0	65	0	0	0	0	0	
875	KFC	Sobe Lifewater Yumberry Pomegranate (20 fl oz)	0	0	0	0	0	80	0	0	0	0	0	
876	KFC	Sobe Lifewater Yumberry Pomegranate (30 fl oz)	5	0	0	0	0	120	1	0	0	0	5	
877	KFC	Strawberry Lemonade (1/2 Gallon)	950	0	0	0	0	790	270	0	264	0	1214	
878	KFC	Strawberry Lemonade (20 fl oz)	170	0	0	0	0	130	45	0	44	0	214	
879	KFC	Tropicana® Fruit Punch (12 fl oz)	170	0	0	0	0	35	45	0	45	0	215	
880	KFC	Tropicana® Fruit Punch (16 fl oz)	230	0	0	0	0	45	60	0	60	0	290	
881	KFC	Tropicana® Fruit Punch (20 fl oz)	280	0	0	0	0	60	75	0	75	0	355	
882	KFC	Tropicana® Fruit Punch (30 fl oz)	420	0	0	0	0	90	113	0	112	0	532	
883	KFC	Tropicana® Light Lemonade (12 fl oz)	5	0	0	0	0	140	0	0	0	0	5	
884	KFC	Tropicana® Light Lemonade (16 fl oz)	10	0	0	0	0	190	0	0	0	0	10	
885	KFC	Tropicana® Light Lemonade (20 fl oz)	10	0	0	0	0	240	0	0	0	0	10	
886	KFC	Tropicana® Light Lemonade (30 fl oz)	15	0	0	0	0	350	1	0	0	0	15	
887	KFC	Tropicana® Pink Lemonade (12 fl oz)	150	0	0	0	0	160	40	0	40	0	190	
888	KFC	Tropicana® Pink Lemonade (16 fl oz)	210	0	0	0	0	210	53	0	53	0	263	
889	KFC	Tropicana® Pink Lemonade (20 fl oz)	260	0	0	0	0	260	67	0	67	0	327	
890	KFC	Tropicana® Pink Lemonade (30 fl oz)	390	0	0	0	0	390	100	0	100	0	490	
891	KFC	Tropicana® Twister® Orange (12 fl oz)	170	0	0	0	0	35	46	0	46	0	216	
892	KFC	Tropicana® Twister® Orange (16 fl oz)	230	0	0	0	0	50	61	0	61	0	291	
893	KFC	Tropicana® Twister® Orange (20 fl oz)	290	0	0	0	0	60	76	0	76	0	366	
894	KFC	Tropicana® Twister® Orange (30 fl oz)	430	0	0	0	0	90	115	0	114	0	544	
895	KFC	Wild Cherry Pepsi® (12 fl oz)	160	0	0	0	0	30	42	0	42	0	202	
896	KFC	Wild Cherry Pepsi® (16 fl oz)	210	0	0	0	0	40	56	0	56	0	266	
897	KFC	Wild Cherry Pepsi® (20 fl oz)	260	0	0	0	0	50	70	0	70	0	330	
898	KFC	Wild Cherry Pepsi® (30 fl oz)	390	0	0	0	0	80	105	0	105	0	495	
899	KFC	Country Fried Steak without Peppered White Gravy	360	24	7	1	35	750	22	2	0	13	354	
900	KFC	Country Fried Steak with Peppered White Gravy	390	26	7	1	35	910	26	2	0	13	384	
901	KFC	KFC® Gizzards	300	16	2	0	210	770	18	<1	0	20	282	
902	KFC	KFC® Livers	230	13	2.5	0	285	750	12	0	0	17	215.5	
903	Taco Bell	Bacon Club Chalupa	440	240	27	5	0	50	840	31	2	3	20	
904	Taco Bell	Blue Raspberry Freeze™ (16 oz)	120	0	0	0	0	0	35	30	0	30	0	
905	Taco Bell	Blue Raspberry Freeze™ (20 oz)	150	0	0	0	0	0	40	38	0	38	0	
906	Taco Bell	Loaded Nacho Taco	250	110	12	4.5	0	25	610	24	3	2	10	
907	Taco Bell	Midnight Berry Freeze™ (16 oz)	140	0	0	0	0	0	35	35	0	34	0	
908	Taco Bell	Midnight Berry Freeze™ (20 oz)	170	0	0	0	0	0	40	43	0	42	0	
909	Taco Bell	Nacho Fries	320	160	18	1.5	0	<5	630	35	4	2	4	
910	Taco Bell	Nacho Fries BellGrande®	710	360	40	6	0	30	1440	73	10	4	13	
911	Taco Bell	Black Bean Chalupa – Online Exclusive	330	140	15	3	0	10	430	39	5	3	10	
912	Taco Bell	Black Bean Quesarito – Online Exclusive	630	270	29	10	0	35	1260	73	7	5	19	
913	Taco Bell	Quesarito – Online Exclusive	650	300	33	12	0.5	55	1390	67	6	5	22	
914	Taco Bell	Chalupa Supreme® – Beef	350	170	18	5	0	25	560	33	4	3	13	
915	Taco Bell	Chalupa Supreme® – Chicken	330	140	15	3.5	0	35	560	31	2	3	16	
916	Taco Bell	Chalupa Supreme® – Steak	330	140	16	4	0	30	530	32	2	3	15	
917	Taco Bell	Cheesy Gordita Crunch	500	250	28	10	0.5	55	850	41	5	4	20	
918	Taco Bell	Crunchy Taco	170	80	9	3.5	0	25	310	13	3	<1	8	
919	Taco Bell	Crunchy Taco Supreme®	190	100	11	4.5	0	25	340	15	3	2	8	
920	Taco Bell	Loaded Nacho Taco (New)	250	110	12	4.5	0	25	610	24	3	2	10	
921	Taco Bell	Nacho Cheese Doritos® Locos Taco	170	80	9	3.5	0	25	360	13	3	<1	8	
922	Taco Bell	Nacho Cheese Doritos® Locos Taco Supreme®	190	100	11	4.5	0	30	380	15	3	2	8	
923	Taco Bell	Soft Taco – Beef	180	80	9	4	0	25	500	17	3	1	9	
924	Taco Bell	Soft Taco – Chicken	160	50	5	2.5	0	30	500	16	1	1	12	
925	Taco Bell	Soft Taco Supreme®	 	 	 	 	 	 	 	 	 	 	 	
926	Taco Bell	Soft Taco – Beef	210	90	10	5	0	25	520	20	3	2	10	
927	Taco Bell	Soft Taco – Chicken	180	60	7	3.5	0	35	520	18	2	2	13	
928	Taco Bell	Bean Burrito (V)	350	80	9	3.5	0	5	1000	54	11	3	13	
929	Taco Bell	Beefy 5-Layer Burrito	490	160	18	7	0	30	1250	63	9	5	18	
930	Taco Bell	Burrito Supreme® – Beef	390	130	14	6	0	25	1110	51	9	4	16	
931	Taco Bell	Burrito Supreme® – Chicken	370	100	11	4.5	0	35	1110	49	8	4	19	
932	Taco Bell	Burrito Supreme® – Steak	370	110	12	5	0	30	1090	49	7	4	18	
933	Taco Bell	Chili Cheese Burrito (regional)	370	150	17	8	0	35	970	40	4	2	16	
934	Taco Bell	Quesarito – Beef	650	300	33	12	0.5	55	1390	67	6	5	22	
935	Taco Bell	Quesarito – Chicken	620	270	29	11	0	65	1390	66	4	4	25	
936	Taco Bell	Quesarito – Steak	630	270	30	11	0	60	1370	66	4	4	24	
937	Taco Bell	Chips and Nacho Cheese Sauce (V)	220	120	13	1.5	0	<5	250	24	2	2	2	
938	Taco Bell	Nacho Fries (V) (New)	320	160	18	1.5	0	<5	630	35	4	2	4	
939	Taco Bell	Nacho Fries BellGrande® (New)	710	360	40	6	0	30	1440	73	10	4	13	
940	Taco Bell	Nachos BellGrande® – Beef	740	340	38	7	0	25	1050	82	15	5	16	
941	Taco Bell	Nachos BellGrande® – Chicken	720	310	35	6	0	35	1050	81	14	5	20	
942	Taco Bell	Nachos BellGrande® – Steak	720	320	36	6	0	30	1030	81	14	5	19	
943	Taco Bell	Beef Quesarito	650	300	33	12	0.5	55	1390	67	6	5	22	
944	Taco Bell	Black Bean Quesarito (V)	630	270	29	10	0	35	1260	73	7	5	19	
945	Taco Bell	Quesadilla – Cheese (V)	470	230	25	12	0.5	50	990	37	4	2	19	
946	Taco Bell	Quesadilla – Chicken	510	240	26	12	0.5	75	1250	38	4	2	27	
947	Taco Bell	Quesadilla – Steak	520	240	27	12	0.5	70	1230	38	4	2	27	
948	Taco Bell	Bacon Club Chalupa – Specialties	440	240	27	5	0	50	840	31	2	3	20	
949	Taco Bell	Black Bean Chalupa – Specialties	330	140	15	3	0	10	430	39	5	3	10	
950	Taco Bell	Black Bean Crunchwrap Supreme – Specialties	510	160	17	4.5	0	5	1080	77	8	6	13	
951	Taco Bell	Black Bean Quesarito – Specialties	630	270	29	10	0	35	1260	73	7	5	19	
952	Taco Bell	Chalupa Supreme® – Specialties	350	170	18	5	0	25	560	33	4	3	13	
953	Taco Bell	Cheesy Gordita Crunch – Specialties	500	250	28	10	0.5	55	850	41	5	4	20	
954	Taco Bell	Cheesy Roll Up – Specialties	180	80	9	5	0	20	430	15	2	<1	9	
955	Taco Bell	Crunchwrap Supreme® – Specialties	530	190	21	6	0	25	1200	71	6	6	16	
956	Taco Bell	Crunchy Taco – Specialties	170	80	9	3.5	0	25	310	13	3	<1	8	
957	Taco Bell	Nacho Cheese Doritos® Locos Taco – Specialties	170	80	9	3.5	0	25	360	13	3	<1	8	
958	Taco Bell	Nachos BellGrande® – Specialties	740	340	38	7	0	25	1050	82	15	5	16	
959	Taco Bell	Power Menu Bowl – Specialties	470	170	19	6	0	70	1200	50	7	2	26	
960	Taco Bell	Quesadilla – Specialties	510	240	26	12	0.5	75	1250	38	4	2	27	
961	Taco Bell	Quesarito – Specialties	650	300	33	12	0.5	55	1390	67	6	5	22	
962	Taco Bell	Soft Taco – Specialties	180	80	9	4	0	25	500	17	3	1	9	
963	Taco Bell	Soft Taco Supreme – Specialties	210	90	10	5	0	25	520	20	3	2	10	
964	Taco Bell	Veggie Power Menu Bowl – Specialties	430	160	17	5	0	20	810	57	10	2	12	
965	Taco Bell	Black Beans & Rice (V)	170	30	3.5	0	0	0	320	31	4	0	4	
966	Taco Bell	Black Beans (V)	50	10	1	0	0	0	135	8	3	0	2	
967	Taco Bell	Cinnabon® Delights™ (2 Pk) (V)	160	80	9	2	0	5	80	17	0	10	2	
968	Taco Bell	Cinnabon® Delights™ (12 Pk – Serves 4) (V)	930	480	53	13	2	40	480	104	3	59	9	
969	Taco Bell	Cinnamon Twists (V)	170	50	6	0	0	0	210	27	<1	13	1	
970	Taco Bell	Diablo Sauce Packet (V)	0	0	0	0	0	0	30	0	0	0	0	
971	Taco Bell	Fire Sauce Packet (V)	0	0	0	0	0	0	55	0	0	0	0	
972	Taco Bell	Hot Sauce Packet (V)	0	0	0	0	0	0	45	0	0	0	0	
973	Taco Bell	Mild Sauce Packet (V)	0	0	0	0	0	0	30	0	0	0	0	
974	Taco Bell	Blue Raspberry Freeze™ (16 oz) (New)	120	0	0	0	0	0	35	30	0	30	0	
975	Taco Bell	Blue Raspberry Freeze™ (20 oz) (New)	150	0	0	0	0	0	40	38	0	38	0	
976	Taco Bell	Dragon Fruit Freeze (16 oz)	190	0	0	0	0	0	50	49	0	47	0	
977	Taco Bell	Dragon Fruit Freeze (20 oz)	230	0	0	0	0	0	60	59	0	57	0	
978	Taco Bell	Lowfat Milk – CA (Regional)	100	20	2	1.5	0	10	130	13	0	12	9	
979	Taco Bell	Lowfat Milk – Federal (Regional)	80	20	2	1.5	0	10	100	10	0	9	7	
980	Taco Bell	Midnight Berry Freeze™ (16 oz) (New)	140	0	0	0	0	0	35	35	0	34	0	
981	Taco Bell	Midnight Berry Freeze™ (20 oz) (New)	170	0	0	0	0	0	40	43	0	42	0	
982	Taco Bell	Mtn Dew® Baja Blast Freeze™ (16 oz)	150	0	0	0	0	0	45	41	0	41	0	
983	Taco Bell	Mtn Dew® Baja Blast Freeze™ (20 oz)	190	0	0	0	0	0	55	51	0	51	0	
984	Taco Bell	Orange Juice	140	0	0	0	0	0	20	33	<1	28	2	
985	Taco Bell	Premium Hot Coffee	10	0	0	0	0	0	0	0	0	0	2	
986	Taco Bell	Regular Iced Coffee	10	0	0	0	0	0	0	0	0	0	2	
987	Taco Bell	Water	0	0	0	0	0	0	0	0	0	0	0	
988	Taco Bell	Wild Strawberry Freeze™ (16 oz)	150	0	0	0	0	0	40	41	0	41	0	
989	Taco Bell	Wild Strawberry Freeze™ (20 oz)	190	0	0	0	0	0	55	51	0	51	0	
990	Taco Bell	Beef Burrito – Value Menu	430	170	19	5	0	20	970	51	4	3	12	
991	Taco Bell	Cheesy Bean & Rice Burrito – Value Menu	420	140	16	4	0	<5	880	56	7	3	10	
992	Taco Bell	Cheesy Roll Up – Value Menu	180	80	9	5	0	20	430	15	2	<1	9	
993	Taco Bell	Chicken Chipotle Melt – Value Menu	190	80	9	3	0	35	530	15	1	<1	12	
994	Taco Bell	Chips and Nacho Cheese Sauce – Value Menu	220	120	13	1.5	0	<5	250	24	2	2	2	
995	Taco Bell	Cinnamon Twists – Value Menu	170	50	6	0	0	0	210	27	<1	13	1	
996	Taco Bell	Loaded Nacho Taco – Value Menu	250	110	12	4.5	0	25	610	24	3	2	10	
997	Taco Bell	Bean Burrito	350	80	9	3.5	0	5	1000	54	11	3	13	
998	Taco Bell	Black Bean Chalupa	330	140	15	3	0	10	430	39	5	3	10	
999	Taco Bell	Black Bean Crunchwrap Supreme	510	160	17	4.5	0	5	1080	77	8	6	13	
1000	Taco Bell	Black Bean Quesarito	630	270	29	10	0	35	1260	73	7	5	19	
1001	Taco Bell	Black Beans & Rice	170	30	3.5	0	0	0	320	31	4	0	4	
1002	Taco Bell	Cheese Quesadilla	470	230	25	12	0.5	50	990	37	4	2	19	
1003	Taco Bell	Cheesy Bean & Rice Burrito	420	140	16	4	0	<5	880	56	7	3	10	
1004	Taco Bell	Cheesy Roll Up	180	80	9	5	0	20	430	15	2	<1	9	
1005	Taco Bell	Chips and Nacho Cheese Sauce	220	120	13	1.5	0	<5	250	24	2	2	2	
1006	Taco Bell	Cinnabon® Delights™ (2 Pack)	160	80	9	2	0	5	80	17	0	10	2	
1007	Taco Bell	Cinnabon® Delights™ (12 Pack – Serves 4)	930	480	53	13	2	40	480	104	3	59	9	
1008	Taco Bell	Cinnamon Twists	170	50	6	0	0	0	210	27	<1	13	1	
1009	Taco Bell	Hash Brown	160	100	12	1	0	0	270	13	2	0	1	
1010	Taco Bell	Power Menu Bowl – Veggie	430	160	17	5	0	20	810	57	10	2	12	
1011	Taco Bell	Power Menu Bowl – Chicken	470	170	19	6	0	70	1200	50	7	2	26	
1012	Taco Bell	Power Menu Bowl – Steak	480	180	20	7	0	60	1150	51	7	2	25	
1013	Taco Bell	Power Menu Bowl – Veggie (V)	430	160	17	5	0	20	810	57	10	2	12	
1014	Taco Bell	Breakfast Crunchwrap – Bacon	670	370	41	12	0	140	1270	50	4	3	21	
1015	Taco Bell	Breakfast Crunchwrap – Sausage	720	430	47	15	0	145	1210	51	4	3	21	
1016	Taco Bell	Breakfast Crunchwrap – Steak	660	350	38	12	0	145	1300	51	4	3	24	
1017	Taco Bell	Breakfast Salsa Packet (V)	0	0	0	0	0	0	50	<1	0	0	0	
1018	Taco Bell	Cheesy Toasted Breakfast Burrito – Bacon	350	150	16	4.5	0	115	870	36	2	3	13	
1019	Taco Bell	Cheesy Toasted Breakfast Burrito – Fiesta Potato (V)	340	130	14	3.5	0	100	750	43	3	3	10	
1020	Taco Bell	Cheesy Toasted Breakfast Burrito – Sausage	340	160	17	5	0	110	730	36	2	3	11	
1021	Taco Bell	Cinnabon® Delights™ (2 Pack) (V)	160	80	9	2	0	5	80	17	0	10	2	
1022	Taco Bell	Cinnabon® Delights™ (12 Pack – Serves 4) (V)	930	480	53	13	2	40	480	104	3	59	9	
1023	Taco Bell	Grande Toasted Breakfast Burrito – Bacon	560	270	30	10	0	230	1290	49	4	3	24	
1024	Taco Bell	Grande Toasted Breakfast Burrito – Sausage	560	280	31	10	0	230	1150	49	4	3	22	
1025	Taco Bell	Grande Toasted Breakfast Burrito – Steak	560	250	28	9	0	240	1310	50	4	3	27	
1026	Taco Bell	Hash Brown (V)	160	100	12	1	0	0	270	13	2	0	1	
1027	Taco Bell	Hash Brown Toasted Breakfast Burrito – Bacon	570	300	33	10	0	135	1270	49	4	2	21	
1028	Taco Bell	Hash Brown Toasted Breakfast Burrito – Sausage	570	300	34	10	0	130	1130	49	4	2	18	
1029	Taco Bell	Hash Brown Toasted Breakfast Burrito – Steak	570	270	30	9	0	140	1290	50	4	2	24	
1030	Taco Bell	7-Up (16 fl oz)	190					70	46			46		
1031	Taco Bell	Brisk® Mango Iced Tea (16 fl oz)	100					50	26			26		
1032	Taco Bell	Brisk® Unsweetened No Lemon Iced Tea (16 fl oz)	0					60	0			0		
1033	Taco Bell	Diet Dr Pepper® (16 fl oz)	0					95	0			0		
1034	Taco Bell	Diet Mtn Dew® (16 fl oz)	5					75	1			1		
1035	Taco Bell	Diet Pepsi® (16 fl oz)	0					75	0			0		
1036	Taco Bell	Dr Pepper® (16 fl oz)	190					60	52			51		
1037	Taco Bell	G2 – Fruit Punch (16 fl oz)	30					140	7			6		
1038	Taco Bell	Mtn Dew® (16 fl oz)	220					70	59			58		
1039	Taco Bell	Mtn Dew® Baja Blast™ (16 fl oz)	220					65	59			59		
1040	Taco Bell	Mtn Dew® Baja Blast Zero Sugar (16 fl oz)	5					70	0			0		
1041	Taco Bell	Mtn Dew® Kickstart™ Orange Citrus (16 fl oz)	70					75	18			18		
1042	Taco Bell	Mug® Root Beer (16 fl oz)	190					60	52			52		
1043	Taco Bell	Pepsi® (16 fl oz)	200					45	55			55		
1044	Taco Bell	Pepsi® Wild Cherry (16 fl oz)	210					40	56			56		
1045	Taco Bell	Pepsi® Zero Sugar (16 fl oz)	0					85	0			0		
1046	Taco Bell	Sierra Mist® (16 fl oz)	200					45	54			54		
1047	Taco Bell	Tropicana® Pink Lemonade (16 fl oz)	210					210	53			53		
1048	Taco Bell	7-Up (20 fl oz)	240					85	58			58		
1049	Taco Bell	Brisk® Mango Iced Tea (20 fl oz)	120					60	32			32		
1050	Taco Bell	Brisk® Unsweetened No Lemon Iced Tea (20 fl oz)	0					75	0			0		
1051	Taco Bell	Diet Dr Pepper® (20 fl oz)	0					120	0			0		
1052	Taco Bell	Diet Mtn Dew® (20 fl oz)	10					90	1			1		
1053	Taco Bell	Diet Pepsi® (20 fl oz)	0					95	0			0		
1054	Taco Bell	Dr Pepper® (20 fl oz)	240					75	65			64		
1055	Taco Bell	G2 – Fruit Punch (20 fl oz)	35					180	9			8		
1056	Taco Bell	Mtn Dew® (20 fl oz)	270					85	73			73		
1057	Taco Bell	Mtn Dew® Baja Blast™ (20 fl oz)	280					80	74			73		
1058	Taco Bell	Mtn Dew® Baja Blast Zero Sugar (20 fl oz)	10					85	0			0		
1059	Taco Bell	Mtn Dew® Kickstart™ Orange Citrus (20 fl oz)	90					90	23			22		
1060	Taco Bell	Mug® Root Beer (20 fl oz)	240					75	65			65		
1061	Taco Bell	Pepsi® (20 fl oz)	250					55	69			69		
1062	Taco Bell	Pepsi® Wild Cherry (20 fl oz)	260					50	70			70		
1063	Taco Bell	Pepsi® Zero Sugar (20 fl oz)	0					105	0			0		
1064	Taco Bell	Sierra Mist® (20 fl oz)	260					55	68			68		
1065	Taco Bell	Tropicana® Pink Lemonade (20 fl oz)	260					260	67			67		
1066	Taco Bell	 	 					 	 			 		
1067	Taco Bell	FOUNTAIN BEVERAGES (30 OZ)	 					 	 			 		
1068	Taco Bell	7-Up (30 fl oz)	350					125	87			87		
1069	Taco Bell	Brisk® Mango Iced Tea (30 fl oz)	180					90	48			48		
1070	Taco Bell	Brisk® Unsweetened No Lemon Iced Tea (30 fl oz)	0					115	0			0		
1071	Taco Bell	Diet Dr Pepper® (30 fl oz)	0					180	1			0		
1072	Taco Bell	Diet Mtn Dew® (30 fl oz)	10					140	1			1		
1073	Taco Bell	Diet Pepsi® (30 fl oz)	0					140	0			0		
1074	Taco Bell	Dr Pepper® (30 fl oz)	360					110	98			96		
1075	Taco Bell	G2 – Fruit Punch (30 fl oz)	50					270	13			12		
1076	Taco Bell	Mtn Dew® (30 fl oz)	410					125	110			109		
1077	Taco Bell	Mtn Dew® Baja Blast™ (30 fl oz)	420					120	110			110		
1078	Taco Bell	Mtn Dew® Baja Blast Zero Sugar (30 fl oz)	15					125	0			0		
1079	Taco Bell	Mtn Dew® Kickstart™ Orange Citrus (30 fl oz)	130					140	34			33		
1080	Taco Bell	Mug® Root Beer (30 fl oz)	360					110	98			98		
1081	Taco Bell	Pepsi® (30 fl oz)	380					80	104			103		
1082	Taco Bell	Pepsi® Wild Cherry (30 fl oz)	390					80	105			105		
1083	Taco Bell	Pepsi® Zero Sugar (30 fl oz)	0					160	<1			0		
1084	Taco Bell	Sierra Mist® (30 fl oz)	380					80	101			101		
1085	Taco Bell	Tropicana® Pink Lemonade (30 fl oz)	390					390	100			100		
1086	Pizza Hut	Detroit Double Cheesy Pizza Slice	280	12	6	0	30	560	31	2	2	13		
1087	Pizza Hut	Detroit Double Pepperoni Pizza Slice	330	17	7	0	40	720	30	2	2	14		
1088	Pizza Hut	Detroit Meaty Pizza Slice	320	16	6	0	35	640	31	2	2	14		
1089	Pizza Hut	Detroit Supremo Pizza Slice	290	13	6	0	30	570	31	2	2	13		
1090	Pizza Hut	Pan Pizza Slices Backyard BBQ Chicken Personal Pan	180	6	2	0	15	370	25	1	8	8		
1091	Pizza Hut	Pan Pizza Slices Backyard BBQ Chicken Medium	270	10	4	0	25	450	33	2	6	11		
1092	Pizza Hut	Pan Pizza Slices Backyard BBQ Chicken Large	380	16	6	0	35	650	43	2	7	16		
1093	Pizza Hut	Pan Pizza Slices Beyond Meat® Pepperoni Medium	240	10	4.5	0	15	470	29	2	1	10		
1094	Pizza Hut	Pan Pizza Slices Beyond Meat® Pepperoni Large	350	16	6	0	25	680	38	3	2	14		
1095	Pizza Hut	Pan Pizza Slices Buffalo Chicken Personal Pan	160	5	2	0	15	570	22	1	2	7		
1096	Pizza Hut	Pan Pizza Slices Buffalo Chicken Medium	240	9	3.5	0	20	680	31	2	2	11		
1097	Pizza Hut	Pan Pizza Slices Buffalo Chicken Large	350	14	5	0	30	850	40	2	2	15		
1098	Pizza Hut	Pan Pizza Slices Cheese Personal Pan	150	6	2.5	0	15	310	17	1	2	7		
1099	Pizza Hut	Pan Pizza Slices Cheese Medium	250	10	4.5	0	25	450	28	2	1	11		
1100	Pizza Hut	Pan Pizza Slices Cheese Large	360	17	7	0	35	660	37	2	2	16		
1101	Pizza Hut	Pan Pizza Slices Chicken Bacon Parmesan Personal Pan	180	8	3	0	20	350	17	1	2	9		
1102	Pizza Hut	Pan Pizza Slices Chicken Bacon Parmesan Medium	270	13	4.5	0	30	470	27	2	1	12		
1103	Pizza Hut	Pan Pizza Slices Chicken Bacon Parmesan Large	390	20	7	0	40	680	35	2	2	18		
1104	Pizza Hut	Pan Pizza Slices Hawaiian Chicken Personal Pan	150	5	2	0	15	330	18	1	3	8		
1105	Pizza Hut	Pan Pizza Slices Hawaiian Chicken Medium	240	9	3.5	0	20	480	29	2	2	12		
1106	Pizza Hut	Pan Pizza Slices Hawaiian Chicken Large	350	15	5	0	30	690	38	2	3	17		
1107	Pizza Hut	Pan Pizza Slices Meat Lover’s® Personal Pan	210	12	4.5	0	25	460	18	1	2	9		
1108	Pizza Hut	Pan Pizza Slices Meat Lover’s® Medium	320	17	6	0	35	640	28	2	1	13		
1109	Pizza Hut	Pan Pizza Slices Meat Lover’s® Large	470	27	10	0	50	940	37	2	2	19		
1110	Pizza Hut	Pan Pizza Slices Pepperoni Personal Pan	150	7	2.5	0	15	310	17	1	2	6		
1111	Pizza Hut	Pan Pizza Slices Pepperoni Medium	250	11	4.5	0	25	470	28	2	1	10		
1112	Pizza Hut	Pan Pizza Slices Pepperoni Large	370	18	6	0	35	680	36	2	2	15		
1113	Pizza Hut	Pan Pizza Slices Pepperoni Lover’s® Personal Pan	180	9	3.5	0	20	370	17	1	2	8		
1114	Pizza Hut	Pan Pizza Slices Pepperoni Lover’s® Medium	300	15	6	0	35	580	28	2	1	13		
1115	Pizza Hut	Pan Pizza Slices Pepperoni Lover’s® Large	440	24	9	0.5	50	850	37	3	2	19		
1116	Pizza Hut	Pan Pizza Slices Supreme Personal Pan	170	8	3	0	15	360	18	1	2	7		
1117	Pizza Hut	Pan Pizza Slices Supreme Medium	270	13	5	0	25	500	29	2	2	11		
1118	Pizza Hut	Pan Pizza Slices Supreme Large	390	20	7	0	40	740	37	2	2	16		
1119	Pizza Hut	Pan Pizza Slices Ultimate Cheese Lover’s® Personal Pan	170	8	3.5	0	15	330	17	1	2	8		
1120	Pizza Hut	Pan Pizza Slices Ultimate Cheese Lover’s® Medium	270	13	5	0	25	470	27	2	1	12		
1121	Pizza Hut	Pan Pizza Slices Ultimate Cheese Lover’s® Large	390	20	8	0	40	670	36	2	2	17		
1122	Pizza Hut	Pan Pizza Slices Veggie Lover’s® Personal Pan	140	5	2	0	10	290	18	1	2	6		
1123	Pizza Hut	Pan Pizza Slices Veggie Lover’s® Medium	230	9	3.5	0	15	420	29	2	2	9		
1124	Pizza Hut	Pan Pizza Slices Veggie Lover’s® Large	330	15	5	0	25	620	38	3	3	14		
1125	Pizza Hut	Hand Tossed Slices Backyard BBQ Chicken Small	140	4	2	0	15	250	20	1	4	6		
1126	Pizza Hut	Hand Tossed Slices Backyard BBQ Chicken Medium	220	7	3	0	20	390	31	2	6	10		
1127	Pizza Hut	Hand Tossed Slices Backyard BBQ Chicken Large	300	10	4.5	0	30	530	40	2	7	14		
1128	Pizza Hut	Hand Tossed Slices Beyond Meat® Pepperoni Medium	200	7	3.5	0	15	410	26	2	1	9		
1129	Pizza Hut	Hand Tossed Slices Beyond Meat® Pepperoni Large	280	10	5	0	20	560	35	3	2	12		
1130	Pizza Hut	Hand Tossed Slices  Buffalo Chicken Small	130	3.5	1.5	0	10	380	19	<1	<1	6		
1131	Pizza Hut	Hand Tossed Slices  Buffalo Chicken Medium	200	5	2.5	0	20	560	28	2	1	9		
1132	Pizza Hut	Hand Tossed Slices  Buffalo Chicken Large	270	8	4	0	30	740	37	2	2	13		
1133	Pizza Hut	Hand Tossed Slices Cheese Small	130	4.5	2	0	10	250	17	1	<1	6		
1134	Pizza Hut	Hand Tossed Slices Cheese Medium	210	8	3.5	0	20	390	26	2	1	10		
1135	Pizza Hut	Hand Tossed Slices Cheese Large	290	10	5	0	30	540	34	3	2	13		
1136	Pizza Hut	Hand Tossed Slices Chicken Bacon Parmesan Small	150	6	2.5	0	15	270	16	1	<1	7		
1137	Pizza Hut	Hand Tossed Slices Chicken Bacon Parmesan Medium	230	9	4	0	25	410	25	2	1	11		
1138	Pizza Hut	Hand Tossed Slices Chicken Bacon Parmesan Large	310	13	5	0	35	560	33	2	1	16		
1139	Pizza Hut	Hand Tossed Slices Hawaiian Chicken Small	130	4	1.5	0	10	270	17	1	1	7		
1140	Pizza Hut	Hand Tossed Slices Hawaiian Chicken Medium	210	6	3	0	20	420	27	2	2	10		
1141	Pizza Hut	Hand Tossed Slices Hawaiian Chicken Large	280	9	4	0	30	580	36	3	3	15		
1142	Pizza Hut	Hand Tossed Slices Meat Lover’s® Small	180	9	3.5	0	20	370	17	1	<1	7		
1143	Pizza Hut	Hand Tossed Slices Meat Lover’s® Medium	290	15	6	0	30	590	26	2	1	12		
1144	Pizza Hut	Hand Tossed Slices Meat Lover’s® Large	390	21	8	0	45	830	34	3	2	17		
1145	Pizza Hut	Hand Tossed Slices Pepperoni Small	130	5	2	0	10	260	16	1	<1	6		
1146	Pizza Hut	Hand Tossed Slices Pepperoni Medium	220	9	4	0	20	420	25	2	1	9		
1147	Pizza Hut	Hand Tossed Slices Pepperoni Large	300	13	6	0	30	590	34	3	2	13		
1148	Pizza Hut	Hand Tossed Slices Pepperoni Lover’s® Small	160	7	3	0	20	310	17	1	<1	7		
1149	Pizza Hut	Hand Tossed Slices Pepperoni Lover’s® Medium	270	13	6	0	35	530	26	2	1	12		
1150	Pizza Hut	Hand Tossed Slices Pepperoni Lover’s® Large	370	18	8	0	50	740	35	3	2	17		
1151	Pizza Hut	Hand Tossed Slices Supreme Small	150	6	2.5	0	15	280	17	1	1	6		
1152	Pizza Hut	Hand Tossed Slices Supreme Medium	240	10	4	0	25	450	26	2	2	10		
1153	Pizza Hut	Hand Tossed Slices Supreme Large	320	14	6	0	35	630	35	3	2	14		
1154	Pizza Hut	Hand Tossed Slices Ultimate Cheese Lover’s® Small	150	6	2.5	0	15	250	16	1	<1	6		
1155	Pizza Hut	Hand Tossed Slices Ultimate Cheese Lover’s® Medium	230	10	4.5	0	25	390	25	2	1	11		
1156	Pizza Hut	Hand Tossed Slices Ultimate Cheese Lover’s® Large	310	13	6	0	35	540	33	2	1	15		
1157	Pizza Hut	Hand Tossed Slices Veggie Lover’s® Small	120	4	1.5	0	10	230	17	1	1	5		
1158	Pizza Hut	Hand Tossed Slices Veggie Lover’s® Medium	200	6	2.5	0	15	370	27	2	2	8		
1159	Pizza Hut	Hand Tossed Slices Veggie Lover’s® Large	260	9	4	0	20	510	36	3	3	11		
\.


--
-- Name: fast_food_nutrition_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fast_food_nutrition_menu_id_seq', 1159, true);


--
-- Name: fast_food_nutrition_menu fast_food_nutrition_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fast_food_nutrition_menu
    ADD CONSTRAINT fast_food_nutrition_menu_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

